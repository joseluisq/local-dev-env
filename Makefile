DOMAIN=dev.local
DOCKER_PROXY_NETWORK=proxy_net

certs:
	-mkcert \
		-cert-file certs/$(DOMAIN).crt \
		-key-file certs/$(DOMAIN).key \
		-install $(DOMAIN) "*.$(DOMAIN)" localhost 127.0.0.1 ::1
.PHONY: certs

network:
	-docker network create --driver=overlay --attachable $(DOCKER_PROXY_NETWORK)
.PHONY: network

proxy:
	-docker stack deploy -c docker-stacks/traefik/docker-compose.yml proxy
.PHONY: proxy
