#!/bin/bash
sudo apt-get install -y apt-transport-https software-properties-common wget &&
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add - &&
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list &&
sudo apt-get update &&
sudo apt-get install grafana &&
sudo systemctl start grafana-server &&
sudo systemctl enable grafana-server.service
