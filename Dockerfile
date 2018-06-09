FROM ubuntu:16.04
RUN apt update && apt install -y mosquitto-clients ca-certificates && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY mqtt-executer.sh /app/mqtt-executer.sh
CMD ./mqtt-executer.sh
