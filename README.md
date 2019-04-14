# install

install docker & k8s

`wget -O- https://raw.githubusercontent.com/onesebun/k8s/master/install-docker-k8s.sh | bash`

reset hostname

`sh set-hostname.sh k8s-master`

init master

`wget -O- https://raw.githubusercontent.com/onesebun/k8s/master/master-init.sh | bash`

for worker node

`sudo sh join-command.sh`
