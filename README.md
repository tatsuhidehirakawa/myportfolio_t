# Docker Container for Web Development.  

1. Overview  
Docker container for Web development.  
Ubuntu container with Git, Docker (DooD), GNU Make and Vim installed.

2. Boot procedure.  
```
cd myportfolio_t; docker compose up -d; docker exec -it 901tol_dev bash
make -v && docker -v && git --version && vim -version
cd myportfolio_k
```  
5. Directory structure diagram (overall/excerpt)  
```
myportfolio_t
  ├─k_901tol_dev
  |   ├─901tol_dev           # Storage area for jigs.
  |   |  └─Dockerfile
  |   └─docker-compose.yml   # Boot from here.
  └─README.md
```
