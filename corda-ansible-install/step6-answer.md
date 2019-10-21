Install the missing Python module by:

- `apt -y install python3-lxml`{{execute}}

or:

- `pip3 install lxml`{{execute}}

Then re-run the playbook by:

- `ansible-playbook corda-ansible.yml -e corda_password_keystore=password`{{execute}}
