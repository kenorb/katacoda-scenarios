After downloading the Ansible role, we need an actual playbook to install Corda.

## Task

Your task now is to create an Ansible playbook using the following steps:

1. Create a new `corda-ansible.yml`{{open}} file in the current folder.
2. Define `localhost` as your host.
3. Define `./corda-ansible` local folder as your role.

## Expected outcome

Verify your playbook file by the following command:

- `ansible-playbook --syntax-check corda-ansible.yml`{{execute}}

When done, proceed to the next step.

## Documentation

- <https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html#basics>
- <https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html>
