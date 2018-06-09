## MQTT executer

Use a MQTT topic as a trigger to execute command.sh. Payload from MQTT message will be transfered as Parameter $1 in that script.

### Usage

create a command.sh file with the command you want to run. Then run

```
docker run -it -v path/to/local/command.sh:/app/command.sh oliverlorenz/mqtt-executer ./mqtt-executer.sh -h <HOST> -p <PORT> -t "<MQTT_TOPIC>" -u <USERNAME> -P <PASSWORD> --capath /etc/ssl/certs/
```
