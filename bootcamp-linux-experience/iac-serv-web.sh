#!/bin/bash

echo "Realizando atualização do servidor ..."
apt-get update
apt-get upgrade -y

echo "Instalando pacotes necessários ..."
apt-get install apache2 unzip -y

echo "Baixando e copiando arquivos da aplicação para o diretório do servidor Apache ..."
cd /tmp
wget https://codeload.github.com/denilsonbonatti/linux-site-dio/zip/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo " --- CONCLUÍDO --- "