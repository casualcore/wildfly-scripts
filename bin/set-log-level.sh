#!/bin/env bash
#-*- coding: utf-8-unix -*-

E_BADARGS=65

if [ "$#" -ne 2 ]; then
    echo "Usage: `basename $0` namespace loglevel"
    exit $E_BADARGS
fi

export NAMESPACE=$1
export LOGLEVEL=$2

./run-offline-script.sh \
    ./cli/set-log-level.cli
