Your `corda-ansible.yml`{{open}} file should looks like:

<pre class="file" data-filename="corda-ansible.yml" data-target="replace">
---
- hosts: localhost
  roles:
  - role: './corda-ansible'
</pre>

You can create it using the following command:

- `printf -- "---\n- hosts: localhost\n  roles:\n  - role: ./corda-ansible" > "$HOME"/corda-ansible.yml`{{execute}}

Verify your playbook file by:

- `ansible-playbook --syntax-check corda-ansible.yml`{{execute}}
