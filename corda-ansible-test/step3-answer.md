Your `corda-ansible.yml`{{open}} file should looks like:

<pre class="file" data-filename="corda-ansible.yml" data-target="replace">
---
- hosts: localhost
  roles:
  - role: './corda-ansible'
</pre>
