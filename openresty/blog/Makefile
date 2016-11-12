default: run

base:
	$(MAKE) -C ../base

build:
	@docker build -t openresty-blog .

push: build
	@docker push openresty-blog

run: build
	@docker-compose -p blog up --build

down:
	@docker-compose -p blog down

reload:
	@docker exec -it blog_app_1 nginx -s reload

sync:
	@rsync -ravzhe ssh --progress nginx root@185.95.122.101:/root/volumes/openresty/

deploy: sync
	@docker-compose -f docker-compose.prod.yaml -p blog up -d --build

.PHONY: default base build push run reload sync deploy