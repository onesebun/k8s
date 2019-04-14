#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https curl

# install docker
wget -qO- https://get.docker.com/gpg | sudo apt-key add -
wger -qO- https://get.docker.com/ | sh
sudo groupadd docker
sudo usermod -aG docker $USER

# install k8s
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo bash -c 'cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF'
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

# swapoff
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

