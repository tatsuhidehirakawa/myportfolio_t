# Docker Container for Web Development.  

1. Overview  
Docker container for Web development.  
Ubuntu container with Git, Docker (DooD), GNU Make and Vim installed.

2. Boot procedure.  
```
cd myportfolio_t; docker compose up -d; docker exec -it 901tol_dev bash
cd myportfolio_k && make -v && docker -v && git --version && vim -version
```  
5. Directory structure diagram (overall/excerpt)  
```
myportfolio_t
  ├─k_901tol_dev
  |   └─Dockerfile
  ├─docker-compose.yml
  ├─Makefile
  └─README.md
```
