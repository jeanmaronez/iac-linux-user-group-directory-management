#!/bin/bash

# Este comando 'echo' exibe a mensagem "Criando usuários do sistema..." no terminal.
echo "Criando usuários do sistema..."

# Este comando 'useradd' cria um novo usuário no sistema.
# - guest_marilda: É o nome de usuário que está sendo criado.
# - -c "Usuário convidado": Define um comentário ou descrição para o usuário ("Usuário convidado").
# - -s /bin/bash: Define o shell de login padrão para o usuário como Bash.
# - -m: Cria o diretório home do usuário se ele não existir.
# - -p $(openssl passwd -crypt Senha123): Define a senha do usuário.
#   - openssl passwd -crypt Senha123: Gera um hash criptografado da senha "Senha123".
#     Este hash é então passado para o '-p' do useradd.
useradd guest_marilda -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
# Isso significa que o usuário 'guest_marilda' será obrigado a alterar sua senha no primeiro login.
passwd guest_marilda -e

# Repete-se o mesmo processo para os próximos usuários.

useradd guest_joao_odilon -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest11 -e

useradd guest_ana_liz -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest12 -e

useradd guest_eduardo -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest13 -e

# Este comando 'echo' exibe a mensagem "Fim!" no terminal.
echo "Fim!"