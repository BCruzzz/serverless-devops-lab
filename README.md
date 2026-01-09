# 🚀 Serverless DevOps Lab – AWS + Terraform + CI/CD

Este repositório contém um **laboratório prático de DevOps e Cloud** utilizando **AWS Free Tier**, com foco em **Infraestrutura como Código (IaC)**, **Serverless**, **CI/CD** e **Observabilidade**.

O projeto foi construído **do zero**, enfrentando e resolvendo problemas reais do dia a dia de um engenheiro DevOps, incluindo configuração de credenciais, backend remoto do Terraform, conflitos de Git, pipelines CI/CD e monitoramento com CloudWatch.

---

## 🎯 Objetivo do Projeto

Criar uma infraestrutura **totalmente automatizada e versionada**, capaz de:

- Provisionar uma **AWS Lambda** via Terraform
- Utilizar **S3 como backend remoto** do Terraform
- Automatizar validações com **GitHub Actions**
- Criar **CloudWatch Dashboard via IaC**
- Aplicar **boas práticas DevOps**
- Utilizar apenas recursos do **AWS Free Tier**

---

## 🧱 Arquitetura da Solução

```
GitHub Repository
        |
        | (push)
        v
GitHub Actions (CI/CD)
        |
        | (terraform)
        v
AWS
├── Lambda (Serverless)
├── CloudWatch Logs
├── CloudWatch Dashboard
├── S3 (Terraform State)
└── IAM
```

---

## 🛠️ Tecnologias Utilizadas

- **AWS (Free Tier)**
  - Lambda
  - CloudWatch
  - S3
  - IAM
- **Terraform**
- **Git & GitHub**
- **GitHub Actions**
- **Node.js** (Runtime da Lambda)

---

## 📂 Estrutura do Repositório

```
.
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── backend.tf
│   ├── variables.tf
│   ├── lambda.tf
│   ├── cloudwatch_dashboard.tf
│   ├── outputs.tf
│
├── lambda/
│   └── index.js
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── .gitignore
└── README.md
```

---

## ⚙️ Funcionalidades Implementadas

- Infraestrutura criada **100% via Terraform**
- Função **AWS Lambda Serverless**
- Backend remoto do Terraform utilizando **S3**
- Pipeline **CI/CD com GitHub Actions**
- **CloudWatch Dashboard** criado via código
- Observabilidade com métricas de:
  - Invocations
  - Errors
  - Duration

---

## 📊 CloudWatch Dashboard

O dashboard é criado automaticamente via Terraform e inclui:

- 📈 Métricas de invocação da Lambda  
- ❌ Métricas de erro  
- ⏱ Duração média de execução  
- Totalmente **versionado como código**

---

## 🔐 Segurança e Boas Práticas

- Uso de **IAM Access Keys** configuradas via secrets
- Diretório `.terraform/` ignorado no Git
- Nenhuma credencial sensível versionada
- Pipeline desacoplado da infraestrutura

---

## 🧪 Como Executar Localmente

### 1️⃣ Configurar credenciais AWS

```bash
export AWS_ACCESS_KEY_ID=XXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXX
export AWS_REGION=us-east-1
```

### 2️⃣ Inicializar Terraform

```bash
terraform init
```

### 3️⃣ Validar infraestrutura

```bash
terraform validate
```

### 4️⃣ Criar recursos

```bash
terraform apply
```

---

## 🧹 Como Destruir a Infraestrutura

Para evitar custos desnecessários:

```bash
terraform destroy
```

---

## 📚 Aprendizados Práticos

Durante este laboratório foram abordados e resolvidos:

- Configuração de **backend remoto do Terraform**
- Gerenciamento de **state**
- Conflitos de **Git (merge, branches divergentes)**
- Erros comuns de **credenciais AWS**
- Problemas com arquivos grandes no GitHub
- Pipelines **CI/CD reais**
- Observabilidade em ambiente **serverless**

---

## 🚀 Próximos Upgrades Possíveis

- CloudWatch Alarms
- Logs Insights no Dashboard
- SNS para alertas (Email / Teams)
- Ambientes **dev / prod**
- Monitoramento de custos
- Métricas customizadas

---

## 👤 Autor

**Bruno Martins**  
Analista de Sistemas | Cloud | DevOps  

🔗 GitHub: https://github.com/BCruzzz

---

## 📌 Observação Final

Este projeto foi desenvolvido com foco em **aprendizado prático**, **boas práticas de mercado** e **construção de portfólio profissional**, simulando desafios reais enfrentados por engenheiros **DevOps e Cloud**.
