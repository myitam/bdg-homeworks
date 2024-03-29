#!/bin/bash

groupadd -f node_exporter
useradd -g node_exporter --no-create-home --shell /bin/false node_exporter
mkdir /etc/node_exporter
chown node_exporter:node_exporter /etc/node_exporter
mv node_exporter-1.0.1.linux-amd64 node_exporter-files
cp node_exporter-files/node_exporter /usr/bin/
chown node_exporter:node_exporter /usr/bin/node_exporter
cp ./node_exporter.service /usr/lib/systemd/system/
chmod 664 /usr/lib/systemd/system/node_exporter.service