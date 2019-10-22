We have now registered Corda node. Now we need to start the service.

## Task

Start the Corda service using `systemctl` command.

In case the service fails to start, please troubleshoot the issue.

## Troubleshooting

1. Please check the status of `corda.service` service using `systemctl` command.
2. If the service is not running, please start it, wait few seconds and check its status again.
3. If the service is still failing, check the logs at `/opt/corda/logs`.
4. Try to run `corda.jar` manually by navigating to `/opt/corda` and execute JAR file using `java` command (for help, run: `man java`).

## Helpful commands

- Re-register node: `java -jar corda.jar --initial-registration --network-root-truststore-password password`{{execute}}

## Verify

Proceed to the next step, if the service started correctly.
