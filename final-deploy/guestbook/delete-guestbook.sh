kubectl -n guestbook delete deployment redis-master
kubectl -n guestbook delete svc redis-master
kubectl -n guestbook delete deployment redis-slave
kubectl -n guestbook delete svc redis-slave
kubectl -n guestbook delete deployment frontend
kubectl -n guestbook delete svc frontend
kubectl delete ns guestbook
