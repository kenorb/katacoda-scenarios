Our compatibility zone requires Corda nodes to be at least 4.0+.

## Task

Please upgrade Corda node to its latest version by modifying your Ansible configuration, then re-run the playbook.

Check the latest version at <https://search.maven.org/artifact/net.corda/corda>

## Useful commands

- To check Corda version, run: `cd /opt/corda && java -jar corda.jar --version`{{execute}}.
- To start Corda node, run: `cd /opt/corda && java -jar corda.jar`{{execute}}.
- To check Corda options, run: `java -jar corda.jar --help`{{execute}}.
- To start Corda service, run: `systemctl start corda.service --no-pager`{{execute}}
- To stop Corda service, run: `systemctl stop corda.service --no-pager`{{execute}}
- To check Corda service, run: `systemctl status corda.service --no-pager`{{execute}}

## Common errors

> Failed to download artifact net.corda:corda:4.1-corda: HTTP Error 404

1. Verify the specified version and URL.
2. Check code at `corda-ansible/tasks/source_maven.yml`{{copy}} for any clues.
3. Verify path at Maven repository at <http://repo1.maven.org/maven2/net/corda/corda/>.

## Expected outcome

After successful upgrade, your node should be up-and-running. To verify, please run:

- `systemctl status corda.service --no-pager`{{execute}}
