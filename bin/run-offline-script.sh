#!/bin/env bash
#-*- coding: utf-8-unix -*-

E_BADARGS=65
if [ ! -n "$1" ]
then
    echo "Usage: `basename $0` FILE [FILE]"
    exit $E_BADARGS
fi

script=$(mktemp "${TMPDIR:-/tmp}/$(basename $0).XXX")
trap "rm -f $script" EXIT

echo "embed-server --server-config=standalone-full.xml --timeout=30" >> $script
cat "$@" >> $script
echo "stop-embedded-server" >> $script


source ./setup-environment.sh


${WILDFLY_BIN}/jboss-cli.sh --file=$script
