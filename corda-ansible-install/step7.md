We have now installed Corda. Now we need to configure the service.

## Task

1. Create a new file called `group_vars/all.yml`{{open}} for site-wide defaults.
2. Append the following variables into `groups_vars/all.yml`{{open}} file.

   - Set `corda_devmode` to `false`.
   - Set `corda_password_keystore` to `password`.
   - Set `corda_url_doorman` to `http://devnet-doorman.cordaconnect.io`.
   - Set `corda_url_networkmap` to `http://devnet-netmap.cordaconnect.io`.

3. Re-run playbook with `--diff` and `-e corda_initial_registration=true` parameters.

Documentation:

- <https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html>
