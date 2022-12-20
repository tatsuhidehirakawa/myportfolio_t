# branchName:=feature-0.1.14.0
branchName:=feature-0.4.0.0
# branchName:=develop

#.PHONY:

#---[ 1. System boot ]-------------------------------------------------------

stgprd/init.dev: ## Sysyem boot of development.(cf. "make stgprd/init.dev")
	cd ../STGprd_devpkg && make init.dev

stgprd/init.tst: ## Sysyem boot of development.(cf. "make stgprd/init.dev")
	cd ../STGprd_devpkg && make init.tst

stgprd/init.stg: ## Sysyem boot of development.(cf. "make stgprd/init.dev")
	cd ../STGprd_devpkg && make init.stg

#---[ 2. Git Manipulation ]-------------------------------------------------------

stgprd/clone.branch: ## Cloning remote branch.(cf. "make stgprd/clone.branch branchName=feature-0.1.5.0")
	@cd .. && git clone -b $(branchName) https://github.com/tatsuhidehirakawa/STGprd_devpkg.git
	@cd ../STGprd_devpkg && git branch -a
	@echo "Cloning was successfully completed!"

stgprd/create.branch: ## Delete remote branch.(cf. "make stgprd/create.branch branchName=feature-0.1.5.0")
	cd ../STGprd_devpkg && git checkout develop
	cd ../STGprd_devpkg && git branch -a
	cd ../STGprd_devpkg && git branch $(branchName)
	cd ../STGprd_devpkg && git push -u origin $(branchName)
	cd ../STGprd_devpkg && git checkout develop
	cd ../STGprd_devpkg && git branch -a
	@echo "Create $(branchName) was successfully completed!"

stgprd/delete.branch: ## Delete remote branch.(cf. "make stgprd/delete.branch branchName=feature-0.1.5.0")
	cd ../STGprd_devpkg && git push --delete origin $(branchName)
	cd ../STGprd_devpkg && git branch -a

#---[ 2. Docker Manipulation ]----------------------------------------------------

all/container.purge: ## Destroy all Docker image, container and caches.  
	@docker container ls -a; docker system df; docker stop `docker ps -q`; docker system prune --volumes -f; docker container prune -f; docker image prune -a -f; docker builder prune -f; docker images -a -f; docker container ls -a; docker system df

#---------------------------------------------------------------------------------


addtags:
	cd ../STGprd_devpkg && git tag $(tagName)
	cd ../STGprd_devpkg && git push origin $(tagName)

# git push origin --delete v2.1.0




go:
	cd t_09_tol && docker compose up 910tol_dev

s/c.esc:
	# cd ../STGprd_devpkg && git checkout hotfix-0.1.2.1
	# cd ../STGprd_devpkg && git checkout hotfix-0.2.5.1
	cd ../STGprd_devpkg && git branch -a



s/g.p:
	cd ../STGprd_devpkg && git push

s/g.b:
	cd ../STGprd_devpkg && git branch -a

s.api.b:
	cd ../STGprd_devpkg && cd s_03_dev && docker compose up $(c)

s.c.wbs:
	docker exec -it '110wbs_dev sh'

s.c.api:
	docker exec -it 124api_dev bash

s.api.d:
	docker stop $(c)



#---[ 4. Repository build and destroy ]---------------------------------------------

x: ## Destroy all Docker image, container and caches.
	cd STGprd_devpkg && docker container ls -a
	cd STGprd_devpkg && docker system df
	docker stop `docker ps -q`
	@docker system prune --volumes -f
	@docker container prune -f
	@docker image prune -a -f
	@docker builder prune -f
	@docker images -a -f
	@docker container ls -a
	@docker system df

s.cl: ## Reset sorce code and remove node_modules.
	cd ../STGprd_devpkg && git clean -df .
	cd ../STGprd_devpkg && cd k_01_src && cd 110wbs_src && rm -R node_modules

s/d.s.p: ## (For Windows!)Destroy all Docker image, container and caches.  
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

s/g.c:
	@cd ../STGprd_devpkg && git config --global user.email "tatsuhide.hirakawa+s@hirasyo.com"
	@cd ../STGprd_devpkg && git config --global user.name "Tatsuhide Hirakawa"

s/g.p.d:
	cd ../STGprd_devpkg && git push --delete origin $(b)
	@cd ../STGprd_devpkg && git branch -a

s/pg_r:
	@cd ../STGprd_devpkg && make pg_restore container_name=134dbs_dev file_name=134dbs_dev.sql
	@echo "Restore Success!"