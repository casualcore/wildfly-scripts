#!/bin/env bash
#-*- coding: utf-8-unix -*-

source ./setup-environment.sh

if [[ -z "${CASUAL_OUTBOUND_POOLS}" ]]; then
  echo 'Environment variable CASUAL_OUTBOUND_POOLS missing'
  exit 1
fi

CASUAL_OUTBOUND_POOLS=${CASUAL_OUTBOUND_POOLS}
POOLS=(${CASUAL_OUTBOUND_POOLS//;/ })

FILE='./pool.properties'

for POOL in ${POOLS[@]};
do
    POOL_ENTRIES=(${POOL//,/ })
    for POOL_ENTRY in ${POOL_ENTRIES[@]};
    do
        echo "$POOL_ENTRY" >> $FILE
    done
    ./run-offline-script-with-properties.sh ./cli/unconfig-all-pools.cli
    rm $FILE
done
