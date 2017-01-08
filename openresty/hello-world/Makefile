default: run

base:
	$(MAKE) -C ../base

build:
	@docker build -t guneysu/openresty-hello .

push: build
	@docker push guneysu/openresty-hello

run: build
	@docker-compose -p merhaba up  --build

down:
	@docker-compose -p merhaba down

reload:
	@docker exec -it merhaba_app_1 nginx -s reload

sync:
	@rsync -avzhe ssh --progress nginx root@185.95.122.101:/root/volumes/openresty/.

deploy: sync
	@docker-compose -f docker-compose.prod.yaml -p merhaba up --build

.PHONY: default base build push run reload sync deploy
