Install the missing Python module by:

- `pip3 install lxml`{{execute}}

or:

- `apt install python3-lxml`{{execute}}

Then re-run the playbook by:

- `ansible-playbook corda-ansible.yml -e corda_password_keystore=somevalue`{{execute}}
