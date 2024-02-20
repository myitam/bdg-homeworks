FROM ubuntu
RUN apt update && apt install -y wget && apt install -y tar
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.50.0-rc.0/prometheus-2.50.0-rc.0.linux-amd64.tar.gz
RUN tar -xvzf prometheus-2.50.0-rc.0.linux-amd64.tar.gz
RUN useradd --no-create-home --shell /bin/false prometheus
RUN mkdir -p /data /etc/prometheus
RUN cd prometheus-2.50.0-rc.0.linux-amd64
RUN pwd
RUN ls -la
RUN mv /prometheus-2.50.0-rc.0.linux-amd64/prometheus /usr/local/bin/
RUN mv /prometheus-2.50.0-rc.0.linux-amd64/promtool /usr/local/bin/
RUN mv /prometheus-2.50.0-rc.0.linux-amd64/consoles /etc/prometheus/
RUN mv /prometheus-2.50.0-rc.0.linux-amd64/console_libraries /etc/prometheus/
COPY prometheus.yml /etc/prometheus/
RUN chown -R prometheus:prometheus /etc/prometheus/ /data/
COPY prometheus.service /etc/systemd/system/
RUN rm prometheus-2.50.0-rc.0.linux-amd64.tar.gz
WORKDIR /etc/prometheus
EXPOSE 9090
ENTRYPOINT  [ "/usr/local/bin/prometheus" ]
CMD ["--storage.tsdb.path=/prometheus"]