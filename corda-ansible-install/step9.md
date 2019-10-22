We have now registered Corda node. Now we need to start the service.

## Task

1. Start the Corda service (`corda.service`{{copy}}) using `systemctl`{{copy}} command.
2. Check the status of Corda service using `systemctl`{{copy}} command.

In case the service fails to start, please troubleshoot the issue.

## Documentation

- <https://docs.cenm.r3.com/setting-up-notary.html?highlight=initial%20registration>

## Troubleshooting

1. Please check the status of `corda.service` service using `systemctl`{{copy}} command.
2. If the service is not running, please start it, wait few seconds and check its status again.
3. If the service is still failing, check the log files in `/opt/corda/logs`{{copy}}.
4. Try to run `corda.jar`{{copy}} manually by navigating to `/opt/corda`{{copy}} and execute JAR file using `java`{{copy}} command (for help, run: `man java`{{copy}}).

### Common errors

> _java.lang.IllegalStateException_: Node's platform version is lower than network's required minimumPlatformVersion

Please proceed to the next step.

### Run playbook

After updating Ansible configuration, you may want to re-run your playbook again by:

- `ansible-playbook corda-ansible.yml`{{execute}}.
