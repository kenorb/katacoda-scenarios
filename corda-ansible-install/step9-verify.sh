([ -f /opt/corda/network-parameters ] && sudo systemctl status corda.service --no-pager) || echo "done"
