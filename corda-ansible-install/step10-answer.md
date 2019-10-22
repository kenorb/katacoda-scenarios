You should perform the following steps:

1. To upgrade Corda node, edit your `group_vars/all.yml`{{open}} and change `corda_version` to `4.1`
2. Re-run playbook by: `ansible-playbook corda-ansible.yml`{{execute}}
3. Check the service status by: `systemctl status corda.service`{{execute}}

## Troubleshooting

- Start Corda node manually by: `cd /opt/corda && java -jar corda.jar`{{execute}}.
- Check the logs for any error by: `tail /opt/corda/logs/*.log`{{execute}}
- Check Corda version by : `cd /opt/corda && java -jar corda.jar --version`{{execute}}.

## Documentation

- <https://docs.cenm.r3.com/setting-up-notary.html>
