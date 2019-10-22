We have now registered Corda node. Now we need to start the service.

## Task

Start the Corda service using `systemctl` command.

In case the service fails to start, please troubleshoot the issue.

Documentation: <https://docs.cenm.r3.com/setting-up-notary.html?highlight=initial%20registration>

## Troubleshooting

1. Please check the status of `corda.service` service using `systemctl`{{copy}} command.
2. If the service is not running, please start it, wait few seconds and check its status again.
3. If the service is still failing, check the log files in `/opt/corda/logs`{{copy}}.
4. Try to run `corda.jar`{{copy}} manually by navigating to `/opt/corda`{{copy}} and execute JAR file using `java`{{copy}} command (for help, run: `man java`{{copy}}).

### Common errors

> java.lang.IllegalArgumentException: Couldn't find network parameters file and compatibility zone wasn't configured/isn't reachable

1. Make sure `/opt/corda/certificates/network-root-truststore.jks`{{copy}} file is present.
2. Try re-registering your node again by:

  1. Change `corda_name_org` in your `group_vars/all.yml`{{open}} file.
  2. Re-register the node with The Identity Manager (IM).

### Register With The Identity Manager (Ansible)

To update configuration and register the node with IM (Doorman), run:

- `ansible-playbook corda-ansible.yml --diff -e corda_initial_registration=true -v`{{execute}}.

### Register With The Identity Manager (manually)

To register the node with IM (Doorman) manually, run:

- `java -jar corda.jar --initial-registration --network-root-truststore-password password`{{execute}}.

It's the last step of `corda-ansible/tasks/main.yml`{{open}} playbook.

### Run playbook

After updating Ansible configuration, you may want to re-run your playbook again by:

- `ansible-playbook corda-ansible.yml`{{execute}}.

## Verify

Proceed to the next step, if you see the following error:

> Node's platform version is lower than network's required minimumPlatformVersion
