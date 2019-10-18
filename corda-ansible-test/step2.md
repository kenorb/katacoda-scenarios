## Task

Your task now is to create an Ansible playbook by the following steps:

1. Create a new `corda-ansible.yml`{{open}} file in the current folder.
2. Specify `localhost` as your host.
3. Specify `./corda-ansible` folder as your role.

## Solution

Your `corda-ansible.yml`{{open}} file should looks like:

```yaml
---
- hosts: localhost
  roles:
  - role: './corda-ansible'
```
