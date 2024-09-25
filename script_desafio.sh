#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios e atribuindo grupos..."

useradd carlos -m -c "Pertencente ao grupo ADM"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -c "Pertencente ao grupo ADM"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -c "Pertencente ao grupo ADM"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM


useradd debora -m -c "Pertencente ao grupo VENDAS"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -c "Pertencente ao grupo VENDAS"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -c "Pertencente ao grupo VENDAS"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN



useradd josefina -m -c "Pertencente ao grupo SECRETÁRIADO"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -c "Pertencente ao grupo SECRETÁRIADO"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -c "Pertencente ao grupo SECRETÁRIADO"  -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC


echo "Especificando o dono dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Configurando permissões dos diretórios..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim..."


