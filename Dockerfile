FROM docker:18.05.0-ce-dind
RUN apk update && apk add jq ca-certificates mosquitto-clients bash git
WORKDIR /app
USER root
COPY mqtt-executer.sh /app/mqtt-executer.sh