#.PHONY:

#---[ 1. system boot ]-------------------------------------------------------
t:
	cd t_09_tol && docker compose up -d

k:
	cd .. && git clone -b develop https://github.com/tatsuhidehirakawa/myportfolio_k.git
	cd ../myportfolio_k && git checkout feature-0.1.2.0
	cd ../myportfolio_k && git checkout hotfix-0.1.2.1
	cd ../myportfolio_k && git branch -a

k.u:
	cd ../myportfolio_k && make init.d

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

c: ## Reset sorce code and remove node_modules.
	cd myportfolio_k && git clean -df .
	cd myportfolio_k && cd k_01_src && cd 110wbs_src && rm -R node_modules

xx: ## (For Windows!)Destroy all Docker image, container and caches.  
	docker container ls -a; docker system df; docker stop `docker ps -q`; docker system prune --volumes -f; docker container prune -f; docker image prune -a -f; docker builder prune -f; docker images -a -f; docker container ls -a; docker system df

xx.test:
	docker container ls -a
	docker system df
	docker stop `docker ps -q`
	docker system prune --volumes -f
	docker container prune -f
	docker image prune -a -f
	docker builder prune -f
	docker images -a -f
	docker container ls -a
	docker system df
