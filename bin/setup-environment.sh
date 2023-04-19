#!/bin/env bash
#-*- coding: utf-8-unix -*-
export JBOSS_HOME=${WILDFLY_HOME:-~/wildfly}
export WILDFLY_BIN=${JBOSS_HOME}/bin
export CASUAL_ARTIFACTS_HOME=${CASUAL_ARTIFACTS_HOME:-~/casual-java-deps-from-maven-central}
export CASUAL_TEST_HOME=${CASUAL_TEST_HOME:-~/casual-java-test-apps/casual-java-test-app}
export CASUAL_VERSION=3.2.22
export CASUAL_CALLER_VERSION=3.2.8
export CASUAL_TEST_VERSION=2.0.2
export GSON_VERSION=2.10.1
export CASUAL_OUTBOUND_POOLS='pool_name=my-pool-name,jndi_name=eis/casualConnectionFactory,min_pool_size=20,initial_pool_size=20,max_pool_size=20,port_number=7772,host_name=10.108.120.202'
export CASUAL_INBOUND_STARTUP_MODE=trigger
export CASUAL_FIELD_TABLE=${CASUAL_FIELD_TABLE:-~/etc/casual-fields.json}
export CASUAL_CONFIG_FILE=${CASUAL_CONFIG_FILE:-~/etc/casual-config.json}
