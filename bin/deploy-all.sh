#!/bin/env bash
#-*- coding: utf-8-unix -*-

./run-offline-script.sh \
    ./cli/deploy-casual-jca.cli \
    ./cli/deploy-casual-caller.cli \
    ./cli/deploy-user-applications.cli \
    ./cli/deploy-casual-inbound-startup-trigger.cli
