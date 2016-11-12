default: run

build:
	@docker build -t guneysu/openresty-hello .

push: build
	@docker push guneysu/openresty-hello

run: build
	@docker-compose -p merhaba up -d --build

down:
	@docker-compose -p merhaba down

reload:
	@docker exec -it merhaba_app_1 nginx -s reload

.PHONY: default build push run reload