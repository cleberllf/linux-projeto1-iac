#!/bin/bash
echo "Criando diretórios..."
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "Criando grupo de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
shell="/bin/bash"

grupo="GRP_ADM"

usuario="carlos"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo

usuario="maria"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo

usuario="joao"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo


grupo="GRP_VEN"

usuario="debora"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo

usuario="sebastiana"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo

usuario="roberto"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo


grupo="GRP_VEN"

usuario="josefina"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo

usuario="amanda"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo

usuario="rogerio"
senha=`openssl rand -base64 10`
echo -e $usuario"\n"$senha"\n" >> senhas.txt
useradd $usuario -m -s $shell -p $(openssl passwd -6 $senha) -G $grupo

echo "Ajustando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
