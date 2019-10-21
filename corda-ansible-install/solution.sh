#!/usr/bin/env bash
cd "$HOME"
git clone https://github.com/corda/corda-ansible # Step 1
apt --yes --no-install-recommends install ansible python3-lxml # Step 2 & 6
printf -- "---\n- hosts: localhost\n  roles:\n  - role: ./corda-ansible" > "$HOME"/corda-ansible.yml # Step 3
sed -i'' s/corda_password_key_store/corda_password_keystore/ "$HOME"/corda-ansible/defaults/main.yml # Step 5
ansible-playbook corda-ansible.yml # Step 4
