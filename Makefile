#.PHONY:

#---[ 1. system boot ]-------------------------------------------------------
t.b:
	cd t_09_tol && docker compose up -d

s.c.tmp:
	cd .. && git clone -b hotfix-0.2.5.1 https://github.com/tatsuhidehirakawa/myportfolio_k.git

s.c.all:
	cd .. && git clone -b develop https://github.com/tatsuhidehirakawa/myportfolio_k.git
	cd ../myportfolio_k && git checkout feature-0.1.2.0
	cd ../myportfolio_k && git checkout hotfix-0.2.5.1

s.c.esc:
	# cd ../myportfolio_k && git checkout hotfix-0.1.2.1
	# cd ../myportfolio_k && git checkout hotfix-0.2.5.1
	cd ../myportfolio_k && git branch -a

s.b:
	cd ../myportfolio_k && make init.d

s.api.b:
	cd ../myportfolio_k && cd k_02_dev && docker compose up $(c)

s.c.wbs:
	docker exec -it '110wbs_dev sh'

s.c.api:
	docker exec -it 124api_dev bash

s.api.d:
	docker stop $(c)

del.b: ## Delete remote branch
	cd ../myportfolio_k && git push --delete origin $(b)
	cd ../myportfolio_k && git branch -a

#---[ 4. Repository build and destroy ]---------------------------------------------

x: ## Destroy all Docker image, container and caches.
	cd myportfolio_k && docker container ls -a
	cd myportfolio_k && docker system df
	docker stop `docker ps -q`
	@docker system prune --volumes -f
	@docker container prune -f
	@docker image prune -a -f
	@docker builder prune -f
	@docker images -a -f
	@docker container ls -a
	@docker system df

s.cl: ## Reset sorce code and remove node_modules.
	cd ../myportfolio_k && git clean -df .
	cd ../myportfolio_k && cd k_01_src && cd 110wbs_src && rm -R node_modules

s.d: ## (For Windows!)Destroy all Docker image, container and caches.  
	docker container ls -a; docker system df; docker stop `docker ps -q`; docker system prune --volumes -f; docker container prune -f; docker image prune -a -f; docker builder prune -f; docker images -a -f; docker container ls -a; docker system df

xx.test:
	docker container ls -a && docker system df\
	docker stop `docker ps -q`\
	docker system prune --volumes -f\
	docker container prune -f\
	docker image prune -a -f\
	docker builder prune -f\
	docker images -a -f\
	docker container ls -a\
	docker system df