# install

安裝 docker & k8s

`sudo sh install-docker-k8s.sh`

重設機器 hostname 原因為當初設定相同名稱在 join 時會出現問題

`sh set-hostname.sh k8s-master`

master 機器

`sudo sh master-init.sh`

master 機器產生 token 讓 node 機器加入

`sudo sh join-command.sh`

# other

apt-get 卡住顯示 `Could not get lock /var/lib/dpkg/lock-frontend - open (11: Resource tempor...`

`sh kill-apt-get.sh`