#!/bin/bash

# Exibe uma mensagem indicando o início da criação de diretórios.
echo "Criando diretórios..."

# Cria diretórios.
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Exibe uma mensagem indicando o início da criação de grupos de usuários.
echo "Criando grupos de usuários..."

# Cria grupos de usuários.
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Exibe uma mensagem indicando o início da criação de usuários.
echo "Criando usuários..."

# Cria o usuário carlos, define seu diretório home, shell bash, senha criptografada e o adiciona ao grupo GRP_ADM.
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
# Cria o usuário Maria, define seu diretório home, shell bash, senha criptografada e o adiciona ao grupo GRP_ADM.
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
# Cria o usuário João, define seu diretório home, shell bash, senha criptografada e o adiciona ao grupo GRP_ADM.
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# faz o mesmo para os próximos usuários.

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Exibe uma mensagem indicando o início da especificação de permissões dos diretórios.
echo "Especificando permissões dos diretórios..."

# Altera o proprietário do diretório /adm para root e o grupo para GRP_ADM.
chown root:GRP_ADM /adm
# Altera o proprietário do diretório /ven para root e o grupo para GRP_VEN.
chown root:GRP_VEN /ven
# Altera o proprietário do diretório /sec para root e o grupo para GRP_SEC.
chown root:GRP_SEC /sec

# Define as permissões do diretório /adm como 770 (leitura, escrita e execução para proprietário e grupo, sem permissão para outros).
chmod 770 /adm
# Define as permissões do diretório /ven como 770 (leitura, escrita e execução para proprietário e grupo, sem permissão para outros).
chmod 770 /ven
# Define as permissões do diretório /sec como 770 (leitura, escrita e execução para proprietário e grupo, sem permissão para outros).
chmod 770 /sec
# Define as permissões do diretório /publico como 777 (leitura, escrita e execução para todos).
chmod 777 /publico

# Exibe uma mensagem indicando o fim do script.
echo "Fim!"