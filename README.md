# QrCodeGenerator 📱

Gerador de QR Code desenvolvido em **Java** com **Spring Boot**, utilizando a biblioteca **ZXing** para a geração das imagens e **AWS S3** para armazenamento/hospedagem dos QR Codes gerados. O projeto é totalmente containerizado com **Docker**.

## ✨ Funcionalidades

- Geração de QR Code a partir de um texto ou URL
- Upload automático da imagem gerada para um bucket na AWS S3
- API REST simples e pronta para integração
- Execução via Docker, sem necessidade de configurar ambiente local

## 🛠️ Tecnologias utilizadas

- Java
- Spring Boot
- Maven
- ZXing 
- AWS S3 
- Docker

## 📋 Pré-requisitos

- JDK 17+ (ajuste conforme a versão usada no `pom.xml`)
- Maven
- Docker 
- Uma conta AWS com um bucket S3 configurado e credenciais de acesso

## ⚙️ Configuração

Crie um arquivo `.env` na raiz do projeto com as variáveis necessárias, por exemplo:

```env
AWS_ACCESS_KEY_ID=sua_access_key
AWS_SECRET_ACCESS_KEY=sua_secret_key
AWS_S3_BUCKET_NAME=nome-do-bucket
AWS_REGION=us-east-1
```

> ⚠️ **Nunca** suba o arquivo `.env` com credenciais reais para o repositório. Adicione-o ao `.gitignore`.

## 🚀 Como executar

## 📡 Uso da API

### Gerar um QR Code

```http
POST /qrcode
Content-Type: application/json
```

**Body de exemplo:**

```json
{
  "text": "https://rafaellfcportifolio.vercel.app"
}
```

**Resposta:** imagem do QR Code gerado (e/ou link da imagem armazenada no S3, dependendo da implementação).

**Exemplo com cURL:**

```bash
curl -X POST http://localhost:8080/qrcode \
  -H "Content-Type: application/json" \
  -d '{"text": "https://github.com/RafaelLfckkj"}'
```

> 💡 Ajuste o path (`/qrcode`), os nomes dos campos do body e o formato da resposta de acordo com o seu `Controller` real.

## 📁 Estrutura do projeto

```
QrCodeGenerator/
├── src/
│   └── main/
│       ├── java/         # Código-fonte da aplicação
│       └── resources/    # Configurações (application.properties/yml)
├── Dockerfile
├── pom.xml
└── .env
```


⭐ Se curtiu o projeto, deixa uma estrela no repositório — ajuda muito e me motiva a continuar!
