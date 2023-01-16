# Репозитории Debian 9.13

## Установить пакет `debian-archive-keyring`

```console
sudo apt install debian-archive-keyring -y
sudo apt install apt-transport-https ca-certificates -y
```

## Добавить описание репозиториев, например, в файл `/etc/apt/sources.list.d/buster.list`

```text
deb https://deb.debian.org/debian/ stretch main contrib non-free
deb https://security.debian.org/debian-security/ stretch/updates main contrib non-free

# В зависимости от поставленных задач использования подключенного репозитория
# дополнительно для Astra Linux Common Edition может понадобиться отменить приоритет
# репозитория Astra Linux Common Edition, для чего удалить файл: 
# /etc/apt/preferences.d/orel (или изменить в нем приоритет репозитория)
```

## Обновить кеш пакетов

```console
sudo apt-get update -y && sudo apt-get upgrade -y
```
