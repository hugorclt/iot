#!/bin/bash

apt update
apt install curl -y

echo 'export KUBECONFIG=/etc/rancher/k3s/k3s.yaml' >> /home/vagrant/.profile
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE=644 k3S_CLUSTER_INIT=1 INSTALL_K3S_EXEC='--flannel-iface=eth1' sh -

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

# Setup services
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
kubectl apply -f /vagrant/config/app1-deployment.yaml
kubectl apply -f /vagrant/config/app2-deployment.yaml
kubectl apply -f /vagrant/config/app3-deployment.yaml
kubectl apply -f /vagrant/config/ingress.yaml 
