docker --version                # Docker sürümünü gösterir

docker images                   # Mevcut Docker imajlarını listeler

docker search nginx             # Docker Hub'da nginx imajını arar

docker pull nginx               # nginx imajını indirir

docker run nginx                # nginx konteynerini başlatır

docker run -d --name mynginx -p 8080:80 nginx   # nginx'i arka planda 8080 portuna map ederek başlatır

docker ps                       # Çalışan konteynerleri listeler

curl localhost:8080             # 8080 portundan nginx'e istek atar

docker logs mynginx             # mynginx konteynerinin loglarını gösterir

docker exec -it mynginx bash    # mynginx konteynerine bash ile bağlanır

docker stop mynginx             # mynginx konteynerini durdurur

docker ps                       # Çalışan konteynerleri tekrar listeler

docker ps -a                    # Tüm (çalışan ve durmuş) konteynerleri listeler

docker start nginx-demo         # nginx-demo isimli konteyneri başlatır

docker stop mynginx             # mynginx konteynerini tekrar durdurur

docker rm mynginx               # mynginx konteynerini siler

docker rmi nginx                # nginx imajını siler



# docker-compose ile demo çalışması

git clone https://github.com/selcuksan/staj-egitim-demo.git   # Demo uygulamasını GitHub'dan klonlar

docker build -t selcuksan/docker-demo-app:v1 .                # Docker imajını oluşturur ve etiketler

docker login                                                  # Docker Hub'a giriş yapar

docker push selcuksan/docker-demo-app:v1                      # Oluşturulan imajı Docker Hub'a gönderir

docker-compose up -d                                          # docker-compose ile servisleri arka planda başlatır

curl localhost:5000                                           # 5000 portundan uygulamaya istek atar

docker-compose down                                           # docker-compose ile tüm servisleri durdurur

docker-compose up -d                                          # Servisleri tekrar başlatır. Verinin korunduğunu kontrol edebiliriz.
