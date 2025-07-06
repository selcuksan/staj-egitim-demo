- `docker --version`  
    Docker sürümünü gösterir

- `docker images`  
    Mevcut Docker imajlarını listeler

- `docker search nginx`  
    Docker Hub'da nginx imajını arar

- `docker pull nginx`  
    nginx imajını indirir

- `docker run nginx`  
    nginx konteynerini başlatır

- `docker run -d --name mynginx -p 8080:80 nginx`  
    nginx'i arka planda 8080 portuna map ederek başlatır

- `docker ps`  
    Çalışan konteynerleri listeler

- `curl localhost:8080`  
    8080 portundan nginx'e istek atar

- `docker logs mynginx`  
    mynginx konteynerinin loglarını gösterir

- `docker exec -it mynginx bash`  
    mynginx konteynerine bash ile bağlanır

- `docker stop mynginx`  
    mynginx konteynerini durdurur

- `docker ps`  
    Çalışan konteynerleri tekrar listeler

- `docker ps -a`  
    Tüm (çalışan ve durmuş) konteynerleri listeler

- `docker start mynginx`  
    mynginx isimli konteyneri başlatır

- `docker stop mynginx`  
    mynginx konteynerini tekrar durdurur

- `docker rm mynginx`  
    mynginx konteynerini siler

- `docker rmi nginx`  
    nginx imajını siler
