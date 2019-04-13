#!/bin/bash

sudo kubeadm init

# work for your non-root user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# install pod network add-on (CoreDNS)
# https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/#pod-network
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

