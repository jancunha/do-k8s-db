# Infraestrutura com Terraform na DigitalOcean

Este projeto utiliza o Terraform para provisionar uma infraestrutura na DigitalOcean contendo:

*   Um cluster Kubernetes (DOKS).
*   Um banco de dados PostgreSQL gerenciado.

## Pré-requisitos

*   [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) instalado.
*   Uma conta na [DigitalOcean](https://www.digitalocean.com/) e um token de acesso pessoal.

## Como Usar

1.  **Clone o repositório:**
    ```bash
    git clone <URL_DO_SEU_REPOSITORIO>
    cd <NOME_DO_DIRETORIO>
    ```

2.  **Crie um arquivo `terraform.tfvars`:**
    Crie um arquivo chamado `terraform.tfvars` para fornecer os valores para as variáveis do projeto. Você pode usar o exemplo abaixo como base.

3.  **Inicialize o Terraform:**
    Este comando irá baixar os providers necessários.
    ```bash
    terraform init
    ```

4.  **Aplique a configuração:**
    Este comando irá criar a infraestrutura na sua conta da DigitalOcean.
    ```bash
    terraform apply
    ```

## Exemplo de `terraform.tfvars`

Crie um arquivo chamado `terraform.tfvars` e adicione o seguinte conteúdo, substituindo `SEU_TOKEN_DA_DIGITALOCEAN` pelo seu token de acesso pessoal.

```hcl
# /home/sysadmin/bootcamp/maratona-com-ia/terraform/terraform.tfvars

do_token = "SEU_TOKEN_DA_DIGITALOCEAN"

# Opcional: Você pode sobrescrever os valores padrão das variáveis abaixo
# name       = "meu-cluster-k8s"
# region     = "nyc3"
# ver        = "1.29.1-do.0"
# node_count = 2
# db_name    = "meu-banco-de-dados"
```

**IMPORTANTE:** Nunca submeta o arquivo `terraform.tfvars` ou seu token de acesso para um repositório Git. Adicione `terraform.tfvars` e `*.auto.tfvars` ao seu arquivo `.gitignore`.
