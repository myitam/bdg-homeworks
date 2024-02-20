FROM ubuntu
RUN apt update && apt install -y tar && apt install -y wget
RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz
RUN tar -xvzf node_exporter-1.7.0.linux-amd64.tar.gz
WORKDIR /
RUN groupadd -f node_exporter
RUN useradd -g node_exporter --no-create-home --shell /bin/false node_exporter
RUN mv node_exporter-1.7.0.linux-amd64 node_exporter-files
RUN cp node_exporter-files/node_exporter /usr/bin/
RUN chown node_exporter:node_exporter /usr/bin/node_exporter
COPY node_exporter.service /usr/lib/systemd/system/
RUN chmod 664 /usr/lib/systemd/system/node_exporter.service
RUN rm node_exporter-1.7.0.linux-amd64.tar.gz
EXPOSE 9100
ENTRYPOINT  [ "/usr/bin/node_exporter" ]