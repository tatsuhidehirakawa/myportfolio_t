.PHONY: init


initdev:
	@docker compose up

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

# maketst:
# 	@mkdir testingMakecmd && touch testingMakecmd/testingSuccess.txt
# 	@echo "test success!"
# 	@echo "Please delete testingMakecmd/testingSuccess.txt after maketest success."
