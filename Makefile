.PHONY: init

initall:
	@docker buildx bake --file docker-bake.hcl myportfolio_k_dev myportfolio_k_tst

initdev:
	@cd k_914set_dev
	# @docker compose up
	@docker compose up 214api_dev, 314dbs_dev
	# @docker compose up 114wbs_dev

inittst:
	# @cd k_910set_tst
	# @docker compose up

destroy:
	@docker container ls -a
	@docker system df
	@docker stop $(docker ps -q)
	@docker system prune --volumes -f
	@docker container prune -f
	@docker image prune -a -f
	@docker builder prune -f
	@docker images -a -f
	@docker container ls -a
	@docker system df

zzzzzzz:
	@cat -e *.sh

rplccrlf:
	@sed -e 's/\r//g' *.sh

yyyyyyy:
	@docker exec -it k_904set_dev-214api_dev-1 bash

clonenv:
	@git clone https://github.com/tatsuhidehirakawa/myportfolio_k.git

