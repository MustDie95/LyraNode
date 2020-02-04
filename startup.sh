#!/usr/bin/env bash

[[ ! -f $HOME/Lyra-CLI-testnet/poswallet.db ]] && dotnet /opt/lyra/cli/lyracli.dll --networkid testnet -p webapi -g poswallet

dotnet /opt/lyra/node/Lyra.Node2.dll
