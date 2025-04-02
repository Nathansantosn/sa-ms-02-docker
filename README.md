
# G88419-sa-ms-02-docker

## Pré-instalação

### Instalação do Docker

Se você ainda não tem o Docker instalado, siga as instruções na [página oficial do Docker](https://docs.docker.com/get-docker/) para a instalação na sua plataforma.

Alternativamente, você pode usar o [Labs Play Docker](https://labs.play-with-docker.com/) para rodar containers Docker no navegador, sem precisar de instalação local.

## Baixando o Repositório

### Clonando o Repositório

Clone o repositório do GitHub para o seu ambiente local:

```bash
git clone https://github.com/CaiquevFreitas/sa-ms-02-docker.git
```

### Construindo a Imagem Docker

Após clonar o repositório, navegue até a pasta do projeto e construa a imagem Docker:

```bash
cd sa-ms-02-docker
docker build -t nome-da-imagem .
```

Substitua `"nome-da-imagem"` por um nome apropriado para a sua imagem Docker.

### Rodando o Container

Agora, você pode executar o container, mapeando a porta 80 do container para a porta 8080 da sua máquina local:

```bash
docker run -p 8080:80 -it nome-da-imagem
```

Isso iniciará o container e você poderá acessar a aplicação em `http://localhost:8080` no seu navegador.
