# base
Docker-based system to deploy our infrastructure 🏗️

### Requirements

* [Docker](https://docs.docker.com/get-docker/)
* [Docker-compose](https://docs.docker.com/compose/)

### How to use

1. Clone the repository
2. Install dependencies with the `requirements.sh` script
3. Run `docker-compose up -d`
4. Clone, build & run all projects with `.utils/startall.sh`
5. Start services one per one

### How to add projects

Add the service to the caddy network
```yml
networks:
  caddynet:
    external: true
```

And edit the `conf/Caddyfile` to reverse proxy the service
### Example

This is an example of a docker-compose file for the [homepage](https://github.com/open-incubator/open-incubator.github.io) :

```yml
version: '3'
services:
  web:
    build: .
    ports:
        - "5000:80"
    networks:
        - caddynet

networks:
  caddynet:
    external: true
```

And the Caddyfile part :

```
openincubator.tech {
    reverse_proxy localhost:5000
}
```

### Utils scripts

Take a look at the guide [here](https://github.com/open-incubator/base/tree/master/utils)
