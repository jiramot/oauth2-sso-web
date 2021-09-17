BINARY=docker

docker:
	docker build -t ghcr.io/jiramot/oauth2-sso-web:latest . --no-cache

push:
	docker push ghcr.io/jiramot/oauth2-sso-web:latest

run:
	docker run -it --rm -p 3000:3000 -e OAUTH_ADMIN_ENDPOINT="http://192.168.1.114:8081" ghcr.io/jiramot/oauth2-sso-web:latest

.PHONY: docker push
