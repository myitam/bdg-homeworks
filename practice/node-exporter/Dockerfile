FROM ubuntu
RUN apt update && apt install -y tar && apt install -y wget
RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz
RUN tar -xvzf node_exporter-1.7.0.linux-amd64.tar.gz
COPY . /var/tmp/
WORKDIR /var/tmp/
RUN cd /var/tmp/
RUN /bin/bash -c '/var/tmp/node-exporter.sh'
EXPOSE 9100
ENTRYPOINT  [ "/usr/bin/node_exporter" ]