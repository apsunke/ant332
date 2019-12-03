kubectl -n delete daemonset filebeat
kubectl -n delete clusterrolebinding filebeat
kubectl -n delete clusterrole filebeat
kubectl -n delete serviceaccount filebeat
kubectl -n delete cm filebeat-config
