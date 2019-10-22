1. You should navigate to your home dir by: `cd`{{execute}}
2. Then create a new folder by: `mkdir -v group_vars`{{execute}}
3. Your `group_vars/all.yml`{{open}} file should looks like:

    <pre class="file" data-filename="/root/group_vars/all.yml" data-target="replace">
    corda_devmode: "false"
    corda_local_path: "files"
    corda_name_org: "ChangeMe" # Change this please!
    corda_password_keystore: "password"
    corda_url_doorman: "http://devnet-doorman.cordaconnect.io"
    corda_url_networkmap: "http://devnet-netmap.cordaconnect.io"
    corda_version: 3.4
    </pre>

4. Navigate to your home dir by: `cd`{{execute}}
5. Re-run playbook by: `ansible-playbook corda-ansible.yml --diff -e corda_initial_registration=true -v`{{execute}}

## Troubleshooting

### Remove certificates

Remove key store certificates by: `cd /opt/corda/certificates && rm -v nodekeystore.jks sslkeystore.jks truststore.jks`{{execute}}

### Register the node

Register the node by: `cd && ansible-playbook corda-ansible.yml --diff -e corda_initial_registration=true -v`{{execute}}

### Check the logs

Check the log files by: `tail /opt/corda/logs/*.log`{{execute}}
