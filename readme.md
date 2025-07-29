# Gerenciamento de Usuários e Diretórios Linux

Este repositório contém dois scripts Bash para automatizar a criação de usuários, grupos e diretórios, bem como a configuração de permissões no sistema operacional Linux.

---

## Estrutura do Repositório

* **`create_users_groups_directories.sh`**: Script para criar diretórios, grupos de usuários e usuários específicos para diferentes departamentos (ADM, VEN, SEC), além de configurar suas permissões.
* **`create_guest_users.sh`**: Script para criar usuários convidados com senhas que expiram no primeiro login.

---

## `create_users_groups_directories.sh`

Este script configura um ambiente com diretórios dedicados e usuários com permissões específicas para cada departamento.

### Funcionalidades

* Cria os diretórios: `/publico`, `/adm`, `/ven`, `/sec`.
* Cria os grupos de usuários: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`.
* Cria usuários e os adiciona aos seus respectivos grupos:
    * **GRP\_ADM**: carlos, maria, joao
    * **GRP\_VEN**: debora, sebastiana, roberto
    * **GRP\_SEC**: josefina, amanda, rogerio
* Define as permissões dos diretórios:
    * `/adm`, `/ven`, `/sec`: Acesso total (leitura, escrita, execução) para o proprietário (root) e o grupo, sem acesso para outros (`770`).
    * `/publico`: Acesso total para todos (`777`).

### Como Usar

1.  **Baixe o script:**
    ```bash
    wget https://github.com/jeanmaronez/iac-provisioning-a-web-server-linux/archive/refs/heads/main.zip
    ```
2.  **Dê permissão de execução ao script:**
    ```bash
    chmod +x create_users_groups_directories.sh
    ```
3.  **Execute o script como root:**
    ```bash
    sudo ./create_users_groups_directories.sh
    ```

---

## `create_guest_users.sh`

Este script cria usuários convidados que são forçados a trocar suas senhas no primeiro login para maior segurança.

### Funcionalidades

* Cria os usuários: `guest_marilda`, `guest_joao_odilon`, `guest_ana_liz`, `guest_eduardo`.
* Define uma senha inicial para cada usuário (`Senha123`).
* Configura para que cada usuário seja obrigado a alterar sua senha no primeiro login.

### Como Usar

1.  **Baixe o script:**
    ```bash
    wget https://github.com/jeanmaronez/iac-provisioning-a-web-server-linux/archive/refs/heads/main.zip
    ```
2.  **Dê permissão de execução ao script:**
    ```bash
    chmod +x create_guest_users.sh
    ```
3.  **Execute o script como root:**
    ```bash
    sudo ./create_guest_users.sh
    ```

---

## Observações Importantes

* Ambos os scripts devem ser executados com **permissões de root** (`sudo`).
* As senhas definidas nos scripts (`Senha123`) são apenas para fins de exemplo. É altamente recomendável alterá-las para senhas mais fortes e únicas em um ambiente de produção.
* O comando `openssl passwd -crypt Senha123` gera um hash da senha. No entanto, para ambientes de produção, é mais seguro usar `useradd -p "$(mkpasswd -m sha-512 "SuaSenhaAqui")"` para senhas mais robustas.

---

Fique à vontade para explorar e adaptar os scripts para suas necessidades específicas de provisionamento de usuários e diretórios!