#!/usr/bin/env bash
#-*- coding: utf-8-unix -*-

# Pool configuration from environment looks like this:
# keys => pool_name jndi_name min_pool_size initial_pool_size max_pool_size port_number host_name
#
# Example:
# CASUAL_OUTBOUND_POOLS='pool_name=my-pool-name,jndi_name=eis/casualConnectionFactory,min_pool_size=5,initial_pool_size=5,max_pool_size=5,port_number=7771,host_name=127.0.0.1;pool_name=another-pool-name,jndi_name=eis/anotherConnectionFactory,min_pool_size=10,initial_pool_size=10,max_pool_size=10,port_number=6545,host_name=192.168.0.1'
#
# Expects:
# WILDFLY_HOME to be set and point to wherever WILDFLY is installed
# CASUAL_OUTBOUND_POOLS to be set according to documentation above

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
    ./run-offline-script-with-properties.sh ./cli/config-jca-pool.cli
    rm $FILE
done
