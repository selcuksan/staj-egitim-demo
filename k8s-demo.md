# Kubernetes Demo

* `kubectl version --client`
  
  kubectl istemci sürümünü gösterir.

* `kubectl cluster-info`
  
  Bağlı olunan Kubernetes cluster bilgisini gösterir.

* `kubectl get nodes`
  
  Cluster içindeki node'ları listeler.

* `kubectl get namespaces`
  
  Mevcut namespace'leri listeler.

* `kubectl create namespace staj-demo`
  
  Demo için yeni bir namespace oluşturur.

* `kubectl create deployment nginx-demo --image=nginx -n staj-demo`
  
  nginx imajından bir Deployment oluşturur.

* `kubectl get deployments -n staj-demo`
  
  Namespace içindeki Deployment'ları listeler.

* `kubectl get pods -n staj-demo`
  
  Deployment tarafından oluşturulan Pod'ları listeler.

* `kubectl describe pod -n staj-demo <pod-adı>`
  
  Pod'un detaylarını, event'lerini ve durum bilgisini gösterir.

* `kubectl logs -n staj-demo <pod-adı>`
  
  Pod loglarını gösterir.

* `kubectl expose deployment nginx-demo --type=ClusterIP --port=80 -n staj-demo`
  
  nginx Deployment'ı için cluster içinden erişilebilir bir Service oluşturur.

* `kubectl get services -n staj-demo`
  
  Namespace içindeki Service'leri listeler.

* `kubectl port-forward service/nginx-demo 8080:80 -n staj-demo`
  
  nginx Service'ini local makinedeki 8080 portuna yönlendirir.

* `curl localhost:8080`
  
  8080 portundan nginx uygulamasına istek atar.

* `kubectl scale deployment nginx-demo --replicas=3 -n staj-demo`
  
  nginx Deployment'ındaki Pod sayısını 3'e çıkarır.

* `kubectl get pods -n staj-demo`
  
  Yeni oluşturulan Pod'ları listeler.

* `kubectl delete pod -n staj-demo <pod-adı>`
  
  Bir Pod'u siler. Deployment yeni bir Pod oluşturarak replica sayısını korur.

* `kubectl get pods -n staj-demo`

  Silinen Pod'un yerine yeni Pod oluşturulduğunu gösterir.

* `kubectl delete deployment nginx-demo -n staj-demo`

  nginx Deployment'ını siler.

* `kubectl delete service nginx-demo -n staj-demo`

  nginx Service'ini siler.

# Kubernetes Demo Uygulaması

* `kubectl create namespace staj-demo`

  Demo uygulaması için namespace oluşturur.

* `kubectl apply -f k8s-manifest.yaml`
  
  Redis ve web uygulamasına ait Deployment ve Service kaynaklarını oluşturur.

* `kubectl get all -n staj-demo`
  
  Namespace içindeki Pod, Deployment, ReplicaSet ve Service kaynaklarını listeler.

* `kubectl get deployments -n staj-demo`
  
  Redis ve web Deployment kaynaklarını gösterir.

* `kubectl get pods -n staj-demo`
  
  Deployment'ların oluşturduğu Pod'ları listeler.

* `kubectl get services -n staj-demo`
  
  Redis ve web Service kaynaklarını listeler.

* `kubectl describe deployment web -n staj-demo`
  
  Web Deployment detaylarını gösterir.

* `kubectl describe service web -n staj-demo`
  
  Web Service'in hangi porttan hangi Pod'lara trafik yönlendirdiğini gösterir.

* `kubectl port-forward service/web 5001:5001 -n staj-demo`
  
  Web Service'ini local makinedeki 5001 portuna yönlendirir.

* `curl localhost:5001`
  
  5001 portundan demo web uygulamasına istek atar.

* `curl localhost:5001`
  
  Tekrar istek atar. Redis üzerindeki sayaç değerinin arttığı görülür.

* `kubectl logs deployment/web -n staj-demo`
  
  Web uygulamasının loglarını gösterir.

* `kubectl logs deployment/redis -n staj-demo`
  
  Redis container loglarını gösterir.

* `kubectl exec -it deployment/web -n staj-demo -- sh`
  
  Web container içine shell ile bağlanır.

* `kubectl scale deployment web --replicas=3 -n staj-demo`
  
  Web uygulamasının Pod sayısını 3'e çıkarır.

* `kubectl get pods -n staj-demo -l app=web`
  
  Web uygulamasına ait Pod'ları listeler.

* `kubectl delete pod -l app=web -n staj-demo`
  
  Web Pod'larını siler. Deployment yeni Pod'lar oluşturarak istenen replica sayısını korur.

* `kubectl get pods -n staj-demo -l app=web`
  
  Silinen Pod'ların yerine yeni Pod'ların oluşturulduğunu gösterir.

* `kubectl delete -f k8s-manifest.yaml`
  
  Manifest dosyasıyla oluşturulan Redis ve web kaynaklarını siler.

* `kubectl delete namespace staj-demo`
  
  Demo namespace'ini siler.
