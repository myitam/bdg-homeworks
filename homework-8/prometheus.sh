#!/bin/bash

wget https://github.com/prometheus/prometheus/releases/download/v2.32.1/prometheus-2.32.1.linux-amd64.tar.gz
useradd --no-create-home --shell /bin/false prometheus
tar -xvf prometheus-2.32.1.linux-amd64.tar.gz
mkdir -p /data /etc/prometheus
cd prometheus-2.32.1.linux-amd64
mv prometheus promtool /usr/local/bin/
mv consoles/ console_libraries/ /etc/prometheus/
cp ./prometheus.yml /etc/prometheus/
chown -R prometheus:prometheus /etc/prometheus/ /data/
rm -rf prometheus*
cp ./prometheus.service /etc/systemd/system/
systemctl enable prometheus
systemctl start prometheus

