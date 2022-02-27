# SB_TZ
Это тестовое задание включает в себя
1. Ansible сценарий для установки terraform и aws
2. Ansible сценарий для развертки web-server для раздачи файла test.txt на базе Amazon Web Services
3. Docker файл для cборки контейнера с веб-сервером для раздачи файла test.txt

P.S.
Запускалось и тестировалось на Ubuntu LTS 20.04

## Для установки terraform и aws необходимо запустить ansible сценарий install_terraform.yml
```
ansible-playbook install_terraform.yml
```
## Перед запуском сценария развертки необходимо ввести доступы авторизации Amazon Web Services
```
aws configure
```
## Для запуска сценария развертки web-server необходимо запустить deploy.yml
```
ansible-playbook -v deploy.yml
```
В процессе развертки будет создан EC2 экземпляр и сконфигурирована сеть. После развертки на виртуальном хосте будет установлен nginx и загружен файл test.txt.
Для доступа к файлу, необходимо пройти по ссылке http://<<dns хоста>>/test.txt .
Узнать DNS можно при помощи команды:
```
terraform output public_instance_dns
```


## Dockerfile находится по пути .\docker\Dockerfile в нем описан web-server с раздачей файла test.txt (в процессе сборки, этот файл помещается внутрь конейнера)
```
cd ./docker
docker build -t webserver:1 .
docker run -p 80:80 webserver:1
```
