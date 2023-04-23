#!/bin/bash

# add k3s master node token
export TOKEN_FILE="/vagrant/scripts/node-token"

# add k3s master node ip and worker node ip
export INSTALL_K3S_EXEC="agent --server https://$1:6443 --token-file $TOKEN_FILE --node-ip=$2"

# download and run k3s agent
curl -sfL https://get.k3s.io | sh -