kubectl create ns guestbook
kubectl -n guestbook apply -f redis-master-deployment.yaml
kubectl -n guestbook apply -f redis-master-service.yaml
kubectl -n guestbook apply -f redis-slave-deployment.yaml
kubectl -n guestbook apply -f redis-slave-service.yaml
kubectl -n guestbook apply -f frontend-deployment.yaml
kubectl -n guestbook apply -f frontend-service.yaml
