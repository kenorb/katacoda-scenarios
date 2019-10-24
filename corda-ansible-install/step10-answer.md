You should perform the following steps:

1. To upgrade Corda node, edit `group_vars/all.yml`{{open}} file and change *corda_version* to _4.1_
2. Re-run playbook by: `cd; ansible-playbook corda-ansible.yml -v`{{execute}}
3. Check the service status by: `systemctl status corda.service --no-pager`{{execute}}

## Troubleshooting

- Start Corda node manually by: `cd /opt/corda && java -jar corda.jar`{{execute}}
- Check the logs for any error by: `tail /opt/corda/logs/*.log`{{execute}}
- Check Corda version by: `cd /opt/corda && java -jar corda.jar --version`{{execute}}
- *When Corda is not upgraded as expected*, as for workaround, try removing the JAR file: `rm -v /opt/corda/corda.jar`{{execute}}

### Checking node's port 10002

The following methods can be used to check whether the node is listening on port 10002:

- `</dev/tcp/localhost/10002; echo $?`{{execute}}
- `systemctl status corda.service --no-pager | grep -C2 :10002`{{execute}}
- `telnet localhost 10002`{{execute}}
- `netstat -nl | grep -C2 10002`{{execute}} (install _net-tools_ package if required)
