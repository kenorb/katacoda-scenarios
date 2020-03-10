Our compatibility zone requires Corda node to be at least 4.0+. So we need to perform the upgrade.

This is the final step.

## Task

Please upgrade Corda node to its latest version by modifying your Ansible configuration (the relevant variable), then re-run the playbook.

Check the latest version at <https://search.maven.org/artifact/net.corda/corda>

## Useful commands

- Run playbook: `(cd; ansible-playbook corda-ansible.yml -v)`{{execute}}
- Check Corda version: `(cd /opt/corda; java -jar corda.jar --version)`{{execute}}
- Start Corda node: `(cd /opt/corda; java -jar corda.jar)`{{execute}}
- Check Corda options: `(cd /opt/corda; java -jar corda.jar --help)`{{execute}}
- Start Corda service: `systemctl start corda.service --no-pager`{{execute}}
- Stop Corda service: `systemctl stop corda.service --no-pager`{{execute}}
- Check Corda service: `systemctl status corda.service --no-pager`{{execute}}

## Expected outcome

After successful upgrade and starting Corda service, your node should be up and running.

To verify your node is started up and registered, run:

- `systemctl status corda.service --no-pager`{{execute}}

Please also verify that your node is listening on port 10002, before completing this final step.

## Common errors

> Failed to download artifact net.corda:corda:4.1-corda: HTTP Error 404

1. Verify the specified version and URL.
2. Check code at `corda-ansible/tasks/source_maven.yml`{{open}} for any clues.
3. Verify path at Maven repository at <http://repo1.maven.org/maven2/net/corda/corda/>.

> java.lang.IllegalStateException: Node's platform version is lower than network's required

If the version hasn't been upgraded despite running the playbook, as for the workaround, consider removing JAR file manually and re-run the playbook again.

## Documentation

- <https://docs.cenm.r3.com/setting-up-notary.html>
