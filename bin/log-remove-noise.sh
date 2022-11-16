#!/bin/env bash
#-*- coding: utf-8-unix -*-

declare -a StringArray=( "se.laz.casual.jca.CasualManagedConnection" "se.laz.casual.jca.CasualManagedConnectionFactory" "se.laz.casual.connection.caller.ConnectionFactoryEntryValidationTimer" "se.laz.casual.connection.caller.ConnectionFactoryEntry" "se.laz.casual.jca.CasualConnectionFactoryImpl" "se.laz.casual.jca.inbound.handler.service.casual.discovery.JndiSearchTimerEjbSingleton" )
 
for val in ${StringArray[@]}; do
   export NAMESPACE=$val
   export LOGLEVEL=OFF

   ./run-offline-script.sh \
       ./cli/set-log-level.cli
done
