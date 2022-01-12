# Docker SPA

Imagem Docker para facilitar a configuração de aplicações SPA

Veja mais em [hub.docker.com/r/tmvdl/spa-server](https://hub.docker.com/r/tmvdl/spa-server)

## Como usar

Instalar o [Docker](https://docs.docker.com/engine/install/).

### Uso 1

1. Criar um arquivo `docker-compose.yaml` na raiz do projeto com a imagem [tmvdl/spa-server](https://hub.docker.com/r/tmvdl/spa-server).

```yaml
# docker-compose.yaml
version: '3'

services:
  app:
    image: tmvdl/spa-server
    volumes:
      - .:/app
```

2. Subir o container para a construção do build

```bash
docker-compose up --build
```

### Uso 2

1. Executar como container do Docker

```sh
docker run --name tmvdl-spa-server tmvdl/spa-server
```

## License

[MIT](LICENSE)

## Update

Atualizado em 12/01/2022
