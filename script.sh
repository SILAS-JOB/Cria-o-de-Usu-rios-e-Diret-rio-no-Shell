#!/bin/bash

echo "Bem vindo ao script de criação de usuários!"
echo "Criando diretórios ..."

mkdir /publico
mkdir /adm 
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "Criando usuários ..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G SEC

echo "Usuários criados com sucesso..."

echo "Gerando permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões geradas..." 
echo "Script Finalizado !"

