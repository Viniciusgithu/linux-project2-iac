#!/bin/bash


echo "Atualizando o servidor..."
apt-get update
apt-get upgrate -y

echo "Baixando o apache unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Entrando na pasta tmp"
cd /tmp

echo "Baixando informações do github"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Entrando na pasta criada: linux-site-dio"
cd linux-site-dio-main

echo "Copiando as informações para a pasta var"
cp -R * /var/www/html

