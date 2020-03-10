### Solution 1

You should run the playbook by:

- `ansible-playbook corda-ansible.yml -e corda_password_keystore=password`{{execute}}

### Solution 2

Edit `corda-ansible.yml`{{open}} and add `corda_password_keystore: "password"` under `vars` section, so your file looks like:

<pre class="file" data-filename="/root/corda-ansible.yml" data-target="replace">
---
- hosts: localhost
  roles:
  - role: ./corda-ansible
    vars:
      corda_password_keystore: "password"
</pre>

### Solution 3

Open (click to open) `corda-ansible/defaults/main.yml`{{open}} file and rename *corda_password_key_store* variable to *corda_password_keystore*.

For example:

- `sed -i'' s/corda_password_key_store/corda_password_keystore/ corda-ansible/defaults/main.yml`{{execute}}

Run the playbook by:

- `ansible-playbook corda-ansible.yml`{{execute}}
