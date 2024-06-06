#!/bin/bash

echo "Iniciando processos"
echo " "
echo "___________________"
echo " "
echo "Criando diretórios... "

mkdir /adm
mkdir /sec
mkdir /ven
mkdir /publico

echo "Criando grupo de usuários... "

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "definindo permissões para os diretórios... "

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "Criando  usuários... "

useradd carlos -c "Carlos Oliveira" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35345sdfi senha123) -G GRP_ADM
passwd -e carlos
useradd maria -c "Maria Andrade" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35hksaiujaeji3ii senha123) -G GRP_ADM
passwd -e maria
useradd joao -c "Joao Pereira" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i1324sefdf35h3ii senha123) -G GRP_ADM
passwd -e joao

useradd debora -c "Débora da Luz" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35adasdasd333h3ii senha123) -G GRP_VEN
passwd -e debora
useradd sebastiana -c "Sebastiana Albuquerque" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35adasdasd333h3ii senha123) -G GRP_VEN
passwd -e sebastiana
useradd roberto -c "Roberto Dos Santos" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35adasdasd333h3ii senha123) -G GRP_VEN
passwd -e roberto

useradd josefina -c "Josefina Pereira" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35adasdasd333h3ii senha123) -G GRP_SEC
passwd -e josefina
useradd amanda -c "Amanda da Silva" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35adasdasd333h3ii senha123) -G GRP_SEC
passwd -e amanda
useradd rogerio -c "Rogério Tavares" -s /bin/bash -m -p $(openssl passwd -1 -salt 42i35adasdasd333h3ii senha123) -G GRP_SEC
passwd -e rogerio

echo "Processo finalizado "
