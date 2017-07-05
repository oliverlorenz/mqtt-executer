## MQTT executer

This is a small bash script which executes the command transfered by the mqtt payload. This script does not contain any security mechanisms. You should be aware that you have to secure the topics with the useful read and write permissions.

## Requirements

This script is based on `mosquitto_sub`. You have to install it before.

### Ubuntu

```
$ apt-get install mosquitto-clients
```

## how to use

```
./mqtt-executer.sh -h "test.mosquitto.org" -t "my/topic"
```

If a message arrives on "my/topic" the payload should contain a bash command like "echo \"test\"". This command will be executed.
