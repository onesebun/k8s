#!/bin/bash
sudo apt install snapd
snap install microk8s --classic
sudo snap alias microk8s.kubectl kubectl
