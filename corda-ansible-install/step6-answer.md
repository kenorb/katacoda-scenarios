Install the missing Python module by:

- `apt -y install python3-lxml`{{execute}}

or:

- `pip3 install lxml`{{execute}}

Note: You need to use _pip3_ instead of _pip_, because Ansible installation is using Python 3 (you can check by: _ansible --version_).

When done, re-run the playbook by:

- `ansible-playbook corda-ansible.yml -e corda_password_keystore=password`{{execute}}
