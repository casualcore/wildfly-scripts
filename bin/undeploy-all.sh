#!/bin/env bash
#-*- coding: utf-8-unix -*-

./run-online-script.sh \
    ./cli/undeploy-casual-jca.cli \
    ./cli/undeploy-casual-caller.cli \
    ./cli/undeploy-user-applications.cli \
    ./cli/undeploy-casual-inbound-startup-trigger.cli
