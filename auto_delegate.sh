#!/bin/bash

echo "To kill this script in the future, simply run this command: kill -9 $$"

echo "Enter your key password:"
read -s PASSWORD

address=<add_wallet_address>
operatorAddress=<validator_address>
coin=udaric
binary=desmos
fees=250${coin}
keyName=<key_name>


while true
do
    echo "$(date) About to withdraw commission and reward"
    echo $PASSWORD | desmos tx distribution withdraw-rewards ${operator_address} --commission --from ${keyName} --gas auto --chain-id=$(cat ~/.${binary}/config/genesis.json  | jq -r .chain_id) --fees ${fees} -y

    sleep 60

    # GET available balance
    amount=$(${binary} q bank balances ${address} --chain-id=$(cat ~/.${binary}/config/genesis.json  | jq -r .chain_id) -o json  | jq -r '.balances[0].amount')

    # Always Keep 1 token available for fees
    amountToDelegate=$((amount - 1000000))

    if [[ $amountToDelegate > 0 && $amountToDelegate != "null" ]]; then
            echo "$(date) About to stake ${amountToDelegate} ${coin}"
            echo $PASSWORD | desmos tx staking delegate ${operatorAddress} ${amountToDelegate}${coin} --chain-id=$(cat ~/.${binary}/config/genesis.json  | jq -r .chain_id) --from ${keyName} --fees ${fees} -y
    fi
    sleep 1h
done
