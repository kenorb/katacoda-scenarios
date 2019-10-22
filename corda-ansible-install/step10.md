Our compatibility zone requires Corda nodes to be at least 4.0+.

## Task

Please upgrade Corda node to its latest version by modifying your Ansible configuration, then re-run the playbook.

Check the latest version at <https://search.maven.org/artifact/net.corda/corda>

## Useful commands

- To check Corda version, run: `cd /opt/corda && java -jar corda.jar --version`{{execute}}.
- To start Corda node, run: `cd /opt/corda && java -jar corda.jar`{{execute}}.
- To check Corda options, run: `java -jar corda.jar --help`{{execute}}.
- To start Corda service, run: `systemctl start corda.service`{{execute}}
- To check Corda service, run: `systemctl status corda.service`{{execute}}

## Verify

After successful upgrade, your node should be up-and-running. To verify, please run:

- `systemctl status corda.service`{{execute}}
