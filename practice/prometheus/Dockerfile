FROM ubuntu
ARG os=arm64
WORKDIR /opt
RUN apt update && apt install -y tar
ADD https://github.com/prometheus/prometheus/releases/download/v2.50.0-rc.0/prometheus-2.50.0-rc.0.linux-arm64.tar.gz .
RUN tar -xvzf prometheus-2.50.0-rc.0.linux-arm64.tar.gz && rm prometheus-2.50.0-rc.0.linux-arm64.tar.gz
RUN mkdir -p /data /etc/prometheus
RUN mv ./prometheus-2.50.0-rc.0.linux-arm64/prometheus /usr/local/bin/
RUN mv ./prometheus-2.50.0-rc.0.linux-arm64/promtool /usr/local/bin/
RUN mv ./prometheus-2.50.0-rc.0.linux-arm64/consoles /etc/prometheus/
RUN mv ./prometheus-2.50.0-rc.0.linux-arm64/console_libraries /etc/prometheus/
WORKDIR /etc/prometheus/
COPY prometheus.yml /etc/prometheus/
EXPOSE 9090
ENTRYPOINT  [ "/usr/local/bin/prometheus" ]
CMD ["--storage.tsdb.path=/prometheus"]
