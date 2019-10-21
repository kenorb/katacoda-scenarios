We have now installed Corda. Now we need to configure the service.

## Task

1. Navigate to your home dir and create a `group_vars`{{copy}} directory.
2. Then create a new file called `group_vars/all.yml`{{open}} for site-wide defaults.
3. Append the following variables into `group_vars/all.yml`{{open}} file.

   - Set `corda_devmode`{{copy}} to `"false"`{{copy}}.
   - Set `corda_local_path`{{copy}} to `"files"`{{copy}}.
   - Set `corda_password_keystore`{{copy}} to `"password"`{{copy}}.
   - Set `corda_url_doorman`{{copy}} to `"http://devnet-doorman.cordaconnect.io"`{{copy}}.
   - Set `corda_url_networkmap`{{copy}} to `"http://devnet-netmap.cordaconnect.io"`{{copy}}.

4. Re-run playbook with `--diff`{{copy}} and `-e corda_initial_registration=true`{{copy}} and `-v`{{copy}}` parameters.

Documentation:

- <https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html>

## Verify

After successful run of the playbook, in the last lines ("Register node" section), you should see the following message:

> Successfully registered Corda node with compatibility zone

> Corda node will now terminate.
