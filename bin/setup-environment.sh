#!/bin/env bash
#-*- coding: utf-8-unix -*-
export JBOSS_HOME=${WILDFLY_HOME:-~/wildfly}
export WILDFLY_BIN=${JBOSS_HOME}/bin
export CASUAL_JCA_HOME=~/casual-java
export CASUAL_VERSION=2.2.7
export CASUAL_CALLER_VERSION=2.2.5
export CASUAL_TEST_VERSION=1.0.2
export CASUAL_OUTBOUND_POOLS='pool_name=my-pool-name,jndi_name=eis/casualConnectionFactory,min_pool_size=20,initial_pool_size=20,max_pool_size=20,port_number=7771,host_name=127.0.0.1'
export CASUAL_INBOUND_STARTUP_MODE=trigger
export CASUAL_FIELD_TABLE=$CASUAL_JCA_HOME/casual/casual-api/src/test/resources/casual-fields.json
