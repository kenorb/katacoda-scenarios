You should run the following commands:

1. Check the service by: `systemctl status corda.service --no-pager`{{execute}}
2. Run the service by: `systemctl start corda.service --no-pager`{{execute}}
3. Check the logs by: `tail /opt/corda/logs/*.log`{{execute}}
4. Run the node manually by: `cd /opt/corda && java -jar corda.jar`{{execute}}
5. On config changes, re-run playbook by: `ansible-playbook corda-ansible.yml`{{execute}}

Proceed to the next step, if you see the following error:

> Node's platform version is lower than network's required _minimumPlatformVersion_
