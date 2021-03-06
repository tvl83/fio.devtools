#!/bin/bash
################################################################################
#
# EOS Testing cave
#
# Created by Bohdan Kossak
# 2018 CryptoLions.io
#
# For automated testing EOS software
#
# Git Hub: https://github.com/CryptoLions
# Eos Network Monitor: http://eosnetworkmonitor.io/
#
# 
###############################################################################


if [[ ! $GLOBALPATH ]]; then
    GLOBALPATH="$(dirname $(realpath $0))/../.."
fi

config="$GLOBALPATH/config.json"
NAME="$( jq -r '.wallet_test_name' "$config" )"

TEST_NAME="Wallet lock $NAME wallet"

failed(){
    echo "0:$TEST_NAME"
    echo "$TEST_NAME - Failed" >> $GLOBALPATH/log/log_error.log;
    echo "$1" >> $GLOBALPATH/log/log_error.log;
    echo "---------------------------------" >> $GLOBALPATH/log/log_error.log;
}

tpm_stderr="$GLOBALPATH/log/tmp_std_err.log"

#-----------------------------------------------------------------------------------
CMD=$($GLOBALPATH/bin/clio.sh wallet lock -n $NAME 2>$tpm_stderr)

ERR=$(cat $tpm_stderr)

if [[ $ERR != "" ]]; then
    failed "$ERR";
    rm $tpm_stderr;
else
    
    DATA=$($GLOBALPATH/clio.sh wallet keys 2>$tpm_stderr)
    ERR=$(cat $tpm_stderr)


    NAME_KEY=($(cat $GLOBALPATH/log/wallet_name_testwallet_key.dat))

    if [[ "$DATA" != *"${NAME_KEY[0]}"* ]]; then
        echo "1:$TEST_NAME"
    else
        failed "Wallet $NAME wasn't locked";
    fi




fi




