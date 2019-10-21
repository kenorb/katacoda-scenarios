## Solution 1

You should run the playbook by:

- `ansible-playbook corda-ansible.yml -e corda_password_keystore=password`{{execute}}

## Solution 2

Open (click to open) `corda-ansible/defaults/main.yml`{{open}} file and rename *corda_password_key_store* variable to *corda_password_keystore*.

For example:

- `sed -i'' s/corda_password_key_store/corda_password_keystore/ corda-ansible/defaults/main.yml`{{execute}}

Run the playbook by:

- `ansible-playbook corda-ansible.yml`{{execute}}
