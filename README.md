# Docker Container for Web Development.  

1. Overview  
Docker container for Web development.  
Include Git, Docker, GNU Make amd Vim on Ubuntu.  

2. Boot procedure.  
```
cd myportfolio_t && docker compose up -d && docker exec -it 901tol_dev bash
docker -v && git --version && vim -version && make -v
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
