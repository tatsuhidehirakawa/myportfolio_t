# Docker Container for Web Development.  

1. Overview  
Docker container for Web development.  
Include Git, Docker, GNU Make amd Vim in Ubuntu.  

2. Boot procedure.  
2-1. Boot procedure A ( Use "Makefile" / Strongly recomended )  
```
cd myportfolio_t
make initdev
```
2-2.Boot procedure B(Not use "Makefile")  
```
cd myportfolio_t
docker compose up -d
```  
7. Directory structure diagram (overall/excerpt)  
```
myportfolio_t
  ├─k_901tol_dev
  |   └─Dockerfile
  ├─docker-compose.yml
  ├─Makefile
  └─README.md
```