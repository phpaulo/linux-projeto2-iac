#!/bin/bash

clear

echo "Atualizando o servidor..."
apt update && apt upgrade -y
echo ""
echo "Instalando o apache2..."
apt install apache2 -y
echo ""
echo "Instalando o unzip..."
apt install unzip -y
echo ""
echo "Baixando a aplicação web..."
wget -c -P /tmp http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo ""
echo "Descompactando arquivo baixado..."
cd /tmp
unzip main.zip
echo "Copiando arquivos da aplicação para diretório do apache..."
cd /linux-site-dio-main
cp -R * /var/www/html/
echo ""
echo "Scritp de provisionamento chegou ao fim!"
