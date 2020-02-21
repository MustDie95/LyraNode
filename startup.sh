#!/usr/bin/env bash

[[ -f $HOME/Lyra-CLI-testnet/poswallet.db ]] && cp $HOME/Lyra-CLI-testnet/poswallet.db $HOME/.Lyra/Lyra-CLI-testnet/poswallet.db || dotnet /opt/lyra/cli/lyracli.dll --networkid testnet -p webapi -g poswallet

\cp /opt/lyra/node/protocol.testnet.json  /root/.Lyra/protocol.testnet.json

dotnet /opt/lyra/node/Lyra.Node2.dll
