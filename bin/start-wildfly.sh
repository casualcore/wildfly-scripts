#!/bin/bash

source ./setup-environment.sh

$WILDFLY_BIN/standalone.sh -c standalone-full.xml "$@"
