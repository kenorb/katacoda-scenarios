We have now installed Corda. Now we need to configure the service.

## Task

1. Navigate to your home dir and create a `group_vars`{{copy}} directory.
2. Then create a new file called `group_vars/all.yml`{{open}} for site-wide defaults.
3. Append the following variables into `group_vars/all.yml`{{open}} file.

    <pre class="file" data-filename="/root/group_vars/all.yml" data-target="replace">
    corda_devmode: "false"
    corda_local_path: "files"
    corda_name_org: "ChangeMe"
    corda_password_keystore: "password"
    corda_url_doorman: "http://devnet-doorman.cordaconnect.io"
    corda_url_networkmap: "http://devnet-netmap.cordaconnect.io"
    corda_version: 3.4
    </pre>

4. Re-run playbook with `--diff`{{copy}} and `-e corda_initial_registration=true`{{copy}} and `-v`{{copy}}` parameters.

Documentation:

- <https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html>

## Verify

After successful run of the playbook, in the last lines ("Register node" section), you should see the following message:

> Registering as a new participant with Corda network

> Successfully registered Corda node with compatibility zone

> Corda node will now terminate.

If you don't, you should revise your configuration.
