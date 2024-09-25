#include <retesteth/configs/Options.h>
using namespace std;
using namespace dataobject;

namespace retesteth::options
{

gennethemindcfg::gennethemindcfg()
{

string const nethermind_config = R"({
    "name" : "Nethermind Client",
})";

string const nethermind_start_sh = R"(#!/bin/bash
if [ $1 = "t8n" ] || [ $1 = "b11r" ]; then
    Evm $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20 $21 $22 $23 $24 $25 $26
elif [ $1 = "-v" ]; then
    Evm --version
else
    stateProvided=0
    readErrorLog=0
    readEnv=0; readAlloc=0; readTxs=0; readFork=0; readReward=0; readChainid=0
    readOutAlloc=0; readOutResult=0; readOutBasedir=0; skipErrorLog=0
    errorLogFile=""
    cmdArgs=""
    for index in ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10} ${11} ${12} ${13} ${14} ${15} ${16} ${17} ${18} ${19} ${20} ${21} ${22} ${23} ${24} ${25} ${26}; do
        if [ $index = "--output.errorlog" ]; then skipErrorLog=1; fi

        if [ $skipErrorLog -eq 0 ]; then
            cmdArgs=$cmdArgs" "$index
        fi

        if [ $index = "--input.alloc" ]; then stateProvided=1; readAlloc=1; continue; fi
        if [ $readAlloc -eq 1 ]; then  alloc=`cat $index`; readAlloc=0; continue; fi

        if [ $index = "--output.basedir" ]; then readOutBasedir=1; continue; fi
        if [ $readOutBasedir -eq 1 ]; then  outbasedir=$index; readOutBasedir=0; continue; fi

        if [ $index = "--output.alloc" ]; then readOutAlloc=1; continue; fi
        if [ $readOutAlloc -eq 1 ]; then  outalloc=$index; readOutAlloc=0; continue; fi

        if [ $index = "--output.result" ]; then readOutResult=1; continue; fi
        if [ $readOutResult -eq 1 ]; then  outresult=$index; readOutResult=0; continue; fi

        if [ $index = "--input.txs" ]; then readTxs=1; continue; fi
        if [ $readTxs -eq 1 ]; then  txs=`cat $index | sed 's/"//g'`; readTxs=0; continue; fi

        if [ $index = "--input.env" ]; then readEnv=1; continue; fi
        if [ $readEnv -eq 1 ]; then  env=`cat $index`; readEnv=0; continue; fi

        if [ $index = "--state.fork" ]; then readFork=1; continue; fi
        if [ $readFork -eq 1 ]; then  fork=$index; readFork=0; continue; fi

        if [ $index = "--state.reward" ]; then readReward=1; continue; fi
        if [ $readReward -eq 1 ]; then  reward=$index; readReward=0; continue; fi

        if [ $index = "--state.chainid" ]; then readChainid=1; continue; fi
        if [ $readChainid -eq 1 ]; then  chainid=$index; readChainid=0; continue; fi

        if [ $index = "--output.errorlog" ]; then readErrorLog=1; continue; fi
        if [ $readErrorLog -eq 1 ]; then errorLogFile=$index; readErrorLog=0; skipErrorLog=0; continue; fi
    done
    if [ $stateProvided -eq 1 ]; then
        if lsof -i :3000 | grep -q LISTEN; then
            state=$(jq -n --arg fork "$fork" --arg reward "$reward" --arg chainid "$chainid" '$ARGS.named' )
            input=$(jq -n --argjson env "$env" --argjson alloc "$alloc" --arg txs "$txs" '$ARGS.named' )

            req=$(jq -c -n --argjson state "$state" --argjson input "$input" '$ARGS.named')
            out=$(curl -s --data-raw $req 'http://localhost:3000')
            echo "$out" | jq '.result' > $outbasedir/$outresult
            echo "$out" | jq '.alloc' > $outbasedir/$outalloc
        else
            Evm t8n $cmdArgs 2> $errorLogFile
        fi
    else
        >&2 echo "Nethermind doesn't implement either t8n-server or t9n"
        exit 1
    fi
fi
)";

string const nethermind_stop_sh = R"(#!/bin/bash
killall Evm 
)";

    {
        spDataObject obj;
        (*obj)["path"] = "nethermind/config";
        (*obj)["content"] = nethermind_config;
        map_configs.addArrayObject(obj);
    }
    {
        spDataObject obj;
        (*obj)["exec"] = true;
        (*obj)["path"] = "nethermind/start.sh";
        (*obj)["content"] = nethermind_start_sh;
        map_configs.addArrayObject(obj);
    }
    {
        spDataObject obj;
        (*obj)["exec"] = true;
        (*obj)["path"] = "nethermind/stop.sh";
        (*obj)["content"] = nethermind_stop_sh;
        map_configs.addArrayObject(obj);
    }
}
}  // namespace retesteth::options
