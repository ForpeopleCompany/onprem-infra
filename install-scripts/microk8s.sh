# подготовка окружения
sudo apt update
sudo apt install snapd
sudo snap install core

# установка и настройка kubectl
sudo snap install kubectl --classic
echo 'source <(kubectl completion bash)' >>~/.bashrc

# установка microK8S
sudo snap install microk8s --classic
microk8s enable dns storage ingress helm3

# настройка прав доступа и конфига для kubectl
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
sudo microk8s config > ~/.kube/config
newgrp microk8s

# установка и настройка helm
sudo snap install helm --classic
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add elastic https://helm.elastic.co
