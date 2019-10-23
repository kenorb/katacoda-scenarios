We have now installed Corda. Now we need to configure the service.

## Task

1. Navigate to your home dir and create a `group_vars`{{copy}} directory.
2. Then create a new file called `group_vars/all.yml`{{open}} for site-wide defaults.
3. Copy the following variables to `group_vars/all.yml`{{open}} file:

    <pre class="file" data-filename="/root/group_vars/all.yml" data-target="replace">
    corda_devmode: "false"
    corda_local_path: "files"
    corda_name_org: "CordaDev-yyyymmdd-01" # CHANGE this please!
    corda_password_keystore: "password"
    corda_url_doorman: "http://devnet-doorman.cordaconnect.io"
    corda_url_networkmap: "http://devnet-netmap.cordaconnect.io"
    corda_version: 3.4
    </pre>

4. Re-run `corda-ansible.yml`{{copy}} playbook with `--diff`{{copy}} and `-e corda_initial_registration=true`{{copy}} and `-v`{{copy}} parameters.
5. Start the Corda service using `systemctl`{{copy}} command.
6. Verify existence of the `/opt/corda/network-parameters`{{copy}} (should be fetched upon Corda node initial registration).

## Expected outcome

After successful run of the playbook, in the last lines of play ("Register node" section), you should see the following yello message (in yellow color):

> Registering as a new participant with Corda network

> Successfully registered Corda node with compatibility zone

> Corda node will now terminate.

Also, after successful registration with the IM and running the service, you should see the new created file at `/opt/corda/network-parameters`{{copy}} containing the node's network parameters.

If you see the red error instead, please revise your configuration.

## Documentation

- <https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html>

## Troubleshooting

### Common errors

> Certificate already exists / Exception during node registration

> _net.corda.node.internal.ConfigurationException_: The name 'O=..., L=...' for identity doesn't match what's in the key store.

1. Make sure to remove `nodekeystore.jks`{{copy}}, `sslkeystore.jks`{{copy}} and `truststore.jks`{{copy}} files from `/opt/corda/certificates`{{copy}}.
2. Re-run the registration of the node.

---

> Certificate signing request has been rejected: Rejection reason code: 2.

> Description: Duplicate legal name.

1. Change the value of `corda_name_org` variable to something else.
2. Re-run the registration of the node.

---

> _java.lang.IllegalArgumentException_: Couldn't find network parameters file and compatibility zone wasn't configured/isn't reachable

1. Make sure `/opt/corda/certificates/network-root-truststore.jks`{{copy}} file is present.
2. Remove key store certificate files (as mentioned above).
3. Try re-registering your node again.

---

> _java.io.IOException_: Keystore was tampered with, or password was incorrect

1. Make sure a keystore password in `corda_password_keystore` variable is correct.
2. You can use `keytool` to open `network-root-truststore.jks` independently, e.g. `keytool -list -keystore /opt/corda/certificates/network-root-truststore.jks`{{execute}}
3. Make sure to remove other key store files from Corda's `certificates/`{{copy}} folder, before registering the node again.

### Register With The Identity Manager (Ansible)

To update configuration and register the node with IM (Doorman), run:

- `ansible-playbook corda-ansible.yml --diff -e corda_initial_registration=true -v`{{execute}}.

### Register With The Identity Manager (manually)

To register the node with IM (Doorman) manually, run:

- `java -jar corda.jar --initial-registration --network-root-truststore-password password`{{execute}}.

It's the last step of `corda-ansible/tasks/main.yml`{{open}} playbook.

### Check the logs

Check the node's log file by: `tail /opt/corda/logs/*.log`{{execute}}.
