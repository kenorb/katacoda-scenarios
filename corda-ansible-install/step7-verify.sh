[ "$(grep IllegalArgumentException /opt/corda/logs/node-host01.log | wc -l)" -gt 2 ] && echo "done"
