We have now installed Corda. Please make sure the service is running.

## Task

1. Please check the status of `corda.service` service using `systemctl` command.
2. If the service is not running, please start it, wait few seconds and check its status again.
3. If the service is still failing, check the logs at `/opt/corda/logs`.
4. Try to run `corda.jar` manually by navigating to `/opt/corda` and execute JAR file using `java` command (for help, run: `man java`).

Proceed to the next step, if you have identified the error (e.g. _java.lang.IllegalArgumentException_).
