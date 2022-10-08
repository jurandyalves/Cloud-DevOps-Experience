#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC    

echo "Criando usuários, seus diretórios e vinculando aos seus grupos..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd debora
useradd josefina
useradd maria
useradd sebastiana
useradd amanda
useradd joao_
useradd roberto
useradd rogerio

echo "Processo finalizado!"