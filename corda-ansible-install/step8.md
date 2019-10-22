We have now installed Corda. Now we need to configure the service.

## Task

1. Navigate to your home dir and create a `group_vars`{{copy}} directory.
2. Then create a new file called `group_vars/all.yml`{{open}} for site-wide defaults.
3. Append the following variables into `group_vars/all.yml`{{open}} file.

    <pre class="file" data-filename="/root/group_vars/all.yml" data-target="replace">
    corda_devmode: "false"
    corda_local_path: "files"
    corda_name_org: "ChangeMe" # Change this please!
    corda_password_keystore: "password"
    corda_url_doorman: "http://devnet-doorman.cordaconnect.io"
    corda_url_networkmap: "http://devnet-netmap.cordaconnect.io"
    corda_version: 3.4
    </pre>

4. Re-run playbook with `--diff`{{copy}} and `-e corda_initial_registration=true`{{copy}} and `-v`{{copy}} parameters.

## Documentation

- <https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html>

## Troubleshooting

### Common errors

> Certificate already exists / Exception during node registration

> _net.corda.node.internal.ConfigurationException_: The name 'O=..., L=...' for identity doesn't match what's in the key store.

1. Make sure to remove `nodekeystore.jks`{{copy}}, `sslkeystore.jks`{{copy}} and `truststore.jks`{{copy}} files from `/opt/corda/certificates`{{copy}}.
2. Re-run the registration of the node.

> Certificate signing request has been rejected: Rejection reason code: 2.

> Description: Duplicate legal name.

1. Change the value for `corda_name_org` to something else.
2. Re-run the registration of the node.

> _java.lang.IllegalArgumentException_: Couldn't find network parameters file and compatibility zone wasn't configured/isn't reachable

1. Make sure `/opt/corda/certificates/network-root-truststore.jks`{{copy}} file is present.
2. Remove key store certificate files (as mentioned above).
3. Try re-registering your node again.

### Register With The Identity Manager (Ansible)

To update configuration and register the node with IM (Doorman), run:

- `ansible-playbook corda-ansible.yml --diff -e corda_initial_registration=true -v`{{execute}}.

### Register With The Identity Manager (manually)

To register the node with IM (Doorman) manually, run:

- `java -jar corda.jar --initial-registration --network-root-truststore-password password`{{execute}}.

It's the last step of `corda-ansible/tasks/main.yml`{{open}} playbook.

## Verify

After successful run of the playbook, in the last lines of play ("Register node" section), you should see the following message (in yellow color):

> Registering as a new participant with Corda network

> Successfully registered Corda node with compatibility zone

> Corda node will now terminate.

If you don't, you should revise your configuration.
