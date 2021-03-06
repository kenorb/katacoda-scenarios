#!/usr/bin/env bash
# A script to solve the steps 1-7.
cd "$HOME"
git clone https://github.com/corda/corda-ansible # Step 1
apt --yes --no-install-recommends install ansible python3-lxml # Step 2 & 6
printf -- "---\n- hosts: localhost\n  roles:\n  - role: ./corda-ansible" > "$HOME"/corda-ansible.yml # Step 3
sed -i'' s/corda_password_key_store/corda_password_keystore/ "$HOME"/corda-ansible/defaults/main.yml # Step 5
sed -i'' "s@http://repo1.maven.org@https://repo1.maven.org@g" "$HOME"/corda-ansible/tasks/source_maven.yml # Step 6
wget -P /root/files http://devnet-doorman.cordaconnect.io/certificates/network-root-truststore.jks # Step 7
ansible-playbook corda-ansible.yml && touch corda-ansible.retry # Step 4
