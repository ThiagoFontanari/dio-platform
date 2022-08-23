#!/bin/bash

#Esse script cria uma estrutura básica de diretórios, usuários, grupos e define permissões de acesso ṕara os usuários.

echo "Criando a estrutura de diretórios ..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Estrutura de diretórios criado com sucesso !!!"

echo "Criando os grupos de usuários ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos de usuários criados !!!"

echo "Criando usuários e designando grupos ..."
useradd maria  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_ADM
useradd carlos  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_ADM
useradd sebastiana  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_VEN
useradd roberto  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_VEN
useradd debora  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_VEN
useradd amanda  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_SEC
useradd rogerio  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_SEC
useradd josefina  -m -s /bin/bash -p $(openssl passwd -crypt minha_senha) -G GRP_SEC
echo "Todos os usuários foram criados e alocados em sues respectivos grupos de trabalho !!!"

echo "Definindo permissões dos usuários sobre os diretórios ..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "Permissões dos usuários definidas com sucesso !!!"

echo " --- FIM --- "

