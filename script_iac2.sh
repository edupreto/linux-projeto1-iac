#!/bin/bash

echo "atualizando servidor..."
apt-get update
apt-get upgrade -y

echo "instalando servidor apache2..."
apt-get install apache2 -y

echo "instalando unzip..."
apt-get install unzip -y

echo "baixando arquivos e salvando arquivos do github..."
cd /tmp
wget https://github.com/edupreto/cracha-nlw/archive/refs/heads/main.zip
unzip main.zip
cd cracha-nwl-main
cp -R * /var/www/html/
