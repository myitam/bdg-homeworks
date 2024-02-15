#!/bin/bash

useradd --no-create-home --shell /bin/false prometheus
mkdir -p /data /etc/prometheus
cd prometheus-2.32.1.linux-amd64
mv prometheus promtool /usr/local/bin/
mv consoles/ console_libraries/ /etc/prometheus/
cd ..
cp ./prometheus.yml /etc/prometheus/
chown -R prometheus:prometheus /etc/prometheus/ /data/
cp ./prometheus.service /etc/systemd/system/