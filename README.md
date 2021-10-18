# onprem-infra
Необходимые скрипты и шаблоны для установки приложения в клиентские окружения

## Вспомогательные скрипты

Включение доступа из вне
```
sudo microk8s.enable metallb <IP>-<IP>
```

Создание секрета с TLS ключем для HTTPS шифрования
```
kubectl create secret tls orgmanager-tls-secret --key ls.key --cert ls.crt
```
