#!/bin/bash

echo "Criando diretórios..." 
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..." 
groupadd -f GRP_ADM
groupadd -f GRP_VEN
groupadd -f GRP_SEC

echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -c "Carlos da Silva" -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -c "Maria da Silva" -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -c "João da Silva" -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -c "Débora dos Santos" -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd Senha123) -c "Sebastião dos Santos" -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -c "Roberto dos Santos" -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -c "Josefina de Souza" -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -c "Amanda de Souza" -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -c "Rogerio de Souza" -G GRP_SEC

echo "Especificando permissões para os diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 700 /adm
chmod 700 /sec
chmod 700 /ven
chmod 777 /publico

echo "Concluido."
