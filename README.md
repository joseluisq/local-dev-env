# Local Development Environment

> Sample repository to reproduce a small local development environment with [trusted development certificates](https://github.com/FiloSottile/mkcert) and [Docker Stack](https://docs.docker.com/engine/reference/commandline/stack/).

Feedback welcome!

## Features

- [https://dev.local](https://dev.local/) domain thanks to [mkcert](https://github.com/FiloSottile/mkcert).
- [Docker stack](https://docs.docker.com/engine/reference/commandline/stack/) examples.

## Usage

### Certificates

1. To generate the certificates, install [mkcert](https://github.com/FiloSottile/mkcert) first and then run:

```sh
make certs
```

2. Add `dev.local` to your `/etc/hosts` file.

```sh
# other entries...
127.0.0.1		dev.local
# you can add your custom hostnames as well...
127.0.0.1		name-a.dev.local
127.0.0.1		name-b.dev.local
127.0.0.1		name-n.dev.local
```

## Docker stack

This sample contains [Treafik Proxy](https://github.com/containous/traefik) that you can use as proxy across your docker containers.
If some custom configuration is needed take a look into [docker-stack](./docker-stack) directory. 

### Create a proxy network

```sh
make network
```

A `proxy_net` network will be created with `--attachable` option, so you will be able to attach your container apps to Traefik later.

### Traefik proxy

```sh
make proxy
```

Now, navigate to [https://dev.local](https://dev.local/) :tada:

## Contributions

Feel free to send some [Pull request](https://github.com/joseluisq/local-dev-env/pulls) or [issue](https://github.com/joseluisq/local-dev-env/issues).

## License
MIT license

© 2019 [Jose Quintana](https://git.io/joseluisq)
