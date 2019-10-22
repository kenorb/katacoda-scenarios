#!/usr/bin/env bash
cd "$HOME"
git clone https://github.com/corda/corda-ansible # Step 1
apt --yes --no-install-recommends install ansible python3-lxml # Step 2 & 6
printf -- "---\n- hosts: localhost\n  roles:\n  - role: ./corda-ansible" > "$HOME"/corda-ansible.yml # Step 3
sed -i'' s/corda_password_key_store/corda_password_keystore/ "$HOME"/corda-ansible/defaults/main.yml # Step 5
wget -P /root/files http://devnet-doorman.cordaconnect.io/certificates/network-root-truststore.jks # Step 7
ansible-playbook corda-ansible.yml && touch corda-ansible.retry # Step 4
mkdir -v group_vars # Step 8
(cd /opt/corda/certificates && rm -v nodekeystore.jks sslkeystore.jks truststore.jks) # Step 8
