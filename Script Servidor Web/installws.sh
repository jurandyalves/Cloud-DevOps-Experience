#!/bin/bash

echo "==> Atualizando Pacotes..."
sleep 5

apt-get update
apt-get upgrade -y

echo "==> Instalando o Apache 2 Unzip..."
sleep 5

apt-get install apache2 -y
apt-get install unzip -y

mkdir tmp

cd tmp

echo "==> Baixando arquivos da aplicação a partir do GitHub"
sleep 5
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "==> Descompactando arquivos..."
sleep 5
unzip main.zip

cd linux-site-dio-main

echo "==> Copiando arquivos para a pasta padrão do apache"
sleep 5
cp -R * /var/www/html

echo "==> Processo finalizado!"