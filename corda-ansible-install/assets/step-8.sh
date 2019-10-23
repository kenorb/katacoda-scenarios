#!/usr/bin/env bash
# A script to solve the 8th step.
cd "$HOME"
mkdir -v group_vars # Step 8
cat <<_EOF > group_vars/all.yml
corda_devmode: "false"
corda_local_path: "files"
corda_name_org: "CordaDev-$(date +%Y%m%d)-$RANDOM"
corda_password_keystore: "password"
corda_url_doorman: "http://devnet-doorman.cordaconnect.io"
corda_url_networkmap: "http://devnet-netmap.cordaconnect.io"
corda_version: 3.4
_EOF
(cd /opt/corda/certificates && rm -v nodekeystore.jks sslkeystore.jks truststore.jks) # Step 8
ansible-playbook corda-ansible.yml --diff -e corda_initial_registration=true -v
