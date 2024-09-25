FROM ubuntu:20.04 as retesteth

ARG BESU_SRC="https://github.com/hyperledger/besu.git"
ARG PYSPECS_SRC="https://github.com/ethereum/execution-spec-tests"
ARG ETEREUMJS_SRC="https://github.com/ethereumjs/ethereumjs-monorepo.git"
ARG RETESTETH_SRC="https://github.com/ethereum/retesteth.git"
ARG GETH_SRC="https://github.com/ethereum/go-ethereum.git"
ARG NIMBUS_SRC="https://github.com/status-im/nimbus-eth1.git"
ARG EVMONE_SRC="https://github.com/ethereum/evmone.git"
ARG PYT8N_SRC="https://github.com/ethereum/execution-specs.git"
ARG NETHERMIND_SRC="https://github.com/NethermindEth/nethermind.git"

# Leave empty to disable the build, can point to commit hash as well
ARG BESU="main"
ARG GETH="master"
ARG NIMBUS="master"
ARG ETHEREUMJS="master"
ARG RETESTETH="develop"
ARG PYSPECS="main"
ARG EVMONE="master"
ARG PYT8N="master"
ARG NETHERMIND="feature/t8n-gnosis"

SHELL ["/bin/bash", "-c"]
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Get necessary packages
RUN apt-get update \
    && apt install software-properties-common -y \
    && add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && add-apt-repository -y ppa:deadsnakes/ppa  \
    && add-apt-repository ppa:linuxuprising/java \
    && apt-get install --yes jq lsof git cmake make perl psmisc curl wget gcc-11 g++-11 python3.10 python3.10-venv python3-pip python3-dev \
    && apt-get install --yes libboost-filesystem-dev libboost-system-dev libboost-program-options-dev libboost-test-dev \
    && echo oracle-java17-installer shared/accepted-oracle-license-v1-3 select true | /usr/bin/debconf-set-selections  \
    && apt-get install --yes oracle-java17-installer oracle-java17-set-default \
    && apt-get install --yes uuid-runtime \
    && rm -rf /var/lib/apt/lists/*
RUN rm /usr/bin/python3 && ln -s /usr/bin/python3.10 /usr/bin/python3 \
    && rm /usr/bin/gcc && rm /usr/bin/g++ \
    && ln -s /usr/bin/gcc-11 /usr/bin/gcc \
    && ln -s /usr/bin/g++-11 /usr/bin/g++

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        libc6 \
        libgcc1 \
        libgssapi-krb5-2 \
        libicu66 \
        libssl1.1 \
        libstdc++6 \
        zlib1g \
    && rm -rf /var/lib/apt/lists/*

# Install .NET
ENV DOTNET_VERSION=8.0.0

RUN curl -fSL --output dotnet.tar.gz https://dotnetcli.azureedge.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-x64.tar.gz \
    && mkdir -p /usr/share/dotnet \
    && tar -zxf dotnet.tar.gz -C /usr/share/dotnet \
    && rm dotnet.tar.gz \
    && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet

# Solidity solc
RUN wget https://github.com/ethereum/solidity/releases/download/v0.8.21/solc-static-linux \
   && cp solc-static-linux /bin/solc \
   && chmod +x /bin/solc

# Pyspecs
RUN git clone $PYSPECS_SRC /execution-spec-tests 
RUN cd /execution-spec-tests && git fetch && git checkout $PYSPECS \
    && python3 -m venv ./venv/ \
    && source ./venv/bin/activate \
    && pip install -e . \
    && wget https://raw.githubusercontent.com/ethereum/retesteth/develop/web/tfinit.sh \
    && cp tfinit.sh /usr/bin/tfinit.sh \
    && chmod +x /usr/bin/tfinit.sh

# PYT8N
RUN test -n "$PYT8N" \
     && git clone $PYT8N_SRC /pyt8n \
     && cd /pyt8n && git fetch && git checkout $PYT8N \
     && python3 -m venv ./venv/ \
     && source ./venv/bin/activate \
     && pip install -e . \
    || echo "Pyt8n is empty"

# Geth
RUN test -n "$GETH" \
     && git clone $GETH_SRC /geth \
     && cd /geth && git fetch && git checkout $GETH \
     && wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz \
     && tar -xvf go1.20.linux-amd64.tar.gz \
     && mv go /usr/local && ln -s /usr/local/go/bin/go /bin/go \
     && go build ./cmd/evm  && cp evm /bin/evm \
     && rm -rf /geth && rm -rf /usr/local/go \
    || echo "Geth is empty"

# Nimbus
RUN test -n "$NIMBUS" \
     && apt-get update \
     && apt-get install --yes librocksdb-dev \
     && rm -rf /var/lib/apt/lists/* \
     && git clone --recursive $NIMBUS_SRC /nimbus \
     && cd /nimbus && git fetch && git checkout $NIMBUS && make t8n \
     && cp /nimbus/tools/t8n/t8n /bin/evm_nimbus \
     && rm -rf /nimbus \
    || echo "Nimbus is empty"

# Ethereumjs
RUN test -n "$ETHEREUMJS" \
     && wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash \
     && . ~/.nvm/nvm.sh \
     && nvm install 19 && nvm alias default 19 && nvm use default \
     && cp -r ~/.nvm/versions/node/v19*/* /usr \
     && git clone $ETEREUMJS_SRC /ethereumjs \
     && cd /ethereumjs && git fetch && git checkout $ETHEREUMJS && npm i && npm run build --workspaces \
    || echo "Ethereumjs is empty"

# Besu
RUN test -n "$BESU" \
     && git clone $BESU_SRC /besu \
     && cd /besu && git fetch && git checkout $BESU \
     && ./gradlew build \
    || echo "Besu is empty"

RUN test -n "$BESU" \
     && cd /besu && ./gradlew ethereum:evmtool:installDist \
     && ln -s /besu/ethereum/evmtool/build/install/evmtool/bin/evm /usr/bin/besuevm \
    || echo "Besu is empty"

# Evmone
RUN test -n "$EVMONE" \
     && git clone --recursive $EVMONE_SRC /evmone \
     && cd /evmone && git fetch && git checkout $evmone \
     && cmake -S . -B build -DEVMONE_TESTING=ON \
     && cmake --build build \
     && ln -s /evmone/build/bin/evmone-t8n /usr/bin/evmone \
     && rm -rf /var/cache/* /root/.hunter/* \
    || echo "Evmone is empty"

# Retesteth
RUN test -n "$RETESTETH" \
    && git clone $RETESTETH_SRC /retesteth \
    && cd /retesteth && git fetch && git checkout $RETESTETH && mkdir /build && cd /build \
    && cmake /retesteth -DCMAKE_BUILD_TYPE=Release \
    && make -j2 \
    && cp /build/retesteth/retesteth /usr/bin/retesteth \
    && rm -rf /build /retesteth /var/cache/* /root/.hunter/* \
    || echo "Retesteth is empty" > /usr/bin/retesteth

RUN test -n "$NETHERMIND" \
    && git clone $NETHERMIND_SRC /nethermind \
    & cd /nethermind && git checkout $NETHERMIND \
    && cd /nethermind \
    && dotnet publish ./tools/evm/Evm.sln -c Release -o /publish --sc false \ 
    && cp -R /publish/* /usr/bin/ \
    && rm -rf /nethermind \
    || echo "Nethermind is empty"

ENTRYPOINT ["/usr/bin/retesteth"]
