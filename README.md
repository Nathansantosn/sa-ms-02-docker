
# Guia Completo Docker - sa-ms-02-docker

## 1. Pré-requisitos

## Configuração do Ambiente Docker
- [Instale o Docker](https://docs.docker.com/get-docker/) seguindo a documentação oficial
- Alternativa online: [Docker Playground](https://labs.play-with-docker.com/)

## 2. Configuração do Projeto

## Clonar o Repositório
```bash
git clone https://github.com/CaiquevFreitas/sa-ms-02-docker.git
cd sa-ms-02-docker
```

## Construir a Imagem Docker

Acesse a pasta do projeto e gere a imagem Docker executando:

```bash
cd sa-ms-02-docker
docker build -t minha-aplicacao .
```

Substitua `"nome-da-imagem"` por um nome apropriado para a sua imagem Docker.

## Rodando o Container

Agora, você pode executar o container, mapeando a porta 80 do container para a porta 8080 da sua máquina local:

```bash
docker run -p 8080:80 -it nome-da-imagem
```

Isso iniciará o container e você poderá acessar a aplicação em `http://localhost:8080` no seu navegador.
