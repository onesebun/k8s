#!/bin/bash

# killall apt apt-get
# sudo killall apt apt-get
# sudo rm /var/lib/apt/lists/lock
# sudo rm /var/cache/apt/archives/lock
# sudo rm /var/lib/dpkg/lock*
# sudo dpkg --configure -a
# sudo apt update

sudo apt-get update
sudo apt-get install -y apt-transport-https curl

# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
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

