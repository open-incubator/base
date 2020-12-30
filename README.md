# base
Docker-based system to deploy our infrastructure 🏗️

### Requirements

* [Docker](https://docs.docker.com/get-docker/)
* [Docker-compose](https://docs.docker.com/compose/)

### How to use

1. Clone the repository
2. Create the acme storage file with `touch acme.json a&& chmod 600 acme.json`
3. Run `docker-compose up -d`
4. Clone, build & run all projects with `.utils/startall.sh`

### How to add projects

Add the traefik router label to the service in the `docker-compose.yml` file of the projetc. For example : `- traefik.frontend.rule=Host:openincubator.tech`
and add it into the `traefik-net` network with these lines: 

```yml
networks:
  proxy:
    external:
      name: "traefik-net"
```

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
        - proxy
    labels:
        - traefik.frontend.rule=Host:openincubator.tech

networks:
  proxy:
    external:
      name: "traefik-net"
```

### Utils scripts

Take a look at the guide [here](https://github.com/open-incubator/base/tree/master/utils)
