# scripts to configure and deploy casual-jca, casual-caller, casual-inbound-trigger-app and test-application

# Settings

check the settings in ```setup-environment.sh```


# Offline steps

Run:
* config-casual-jca.sh
* log-remove-noise.sh ( optional)
* set-log-level.sh for namespace and loglevel ( see script, also optional)
* configure-test-app-ds.sh
* deploy-all.sh

Start wildfly with start-wildfly.sh.



