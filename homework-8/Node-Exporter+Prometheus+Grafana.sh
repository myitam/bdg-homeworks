#!/bin/bash


if systemctl --all --type service | grep -q "prometheus";then

else
   ./prometheus.sh
fi

if systemctl --all --type service | grep -q "Node-Exporter";then

else
   ./Node-Exporter.sh
fi

if systemctl --all --type service | grep -q "grafana";then

else
   ./grafana.sh
   
fi

