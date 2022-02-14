# установка autocomplete для kubectl
echo 'source <(kubectl completion bash)' >>~/.bashrc

# настройка прав доступа и конфига для kubectl
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
mkdir ~/.kube
microk8s config > ~/.kube/config
newgrp microk8s
