[ -f "$HOME"/group_vars/all.yml ] && ansible-playbook --syntax-check "$HOME"/corda-ansible.yml && echo "done"
