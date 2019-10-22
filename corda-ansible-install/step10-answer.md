You should perform the following steps:

1. To upgrade Corda node, edit your `group_vars/all.yml`{{open}} and change _corda_version_ to _4.1_.
2. Re-run playbook by: `cd; ansible-playbook corda-ansible.yml`{{execute}}.
3. Check the service status by: `systemctl status corda.service --no-pager`{{execute}}.

## Troubleshooting

- Start Corda node manually by: `cd /opt/corda && java -jar corda.jar`{{execute}}.
- Check the logs for any error by: `tail /opt/corda/logs/*.log`{{execute}}.
- Check Corda version by: `cd /opt/corda && java -jar corda.jar --version`{{execute}}.
- If Corda is not upgraded after running playbook, try removing JAR file first: `rm -v /opt/corda/corda.jar`{{execute}}.

## Documentation

- <https://docs.cenm.r3.com/setting-up-notary.html>
