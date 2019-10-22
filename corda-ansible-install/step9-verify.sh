(systemctl status corda.service || grep java.lang.IllegalStateException /opt/corda/logs/node-host01.log) && echo "done"
