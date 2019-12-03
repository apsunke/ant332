kubectl -n kube-system delete daemonset metricbeat
kubectl -n kube-system delete deploy metricbeat
kubectl -n kube-system delete cm metricbeat-daemonset-config
kubectl -n kube-system delete cm metricbeat-daemonset-modules
kubectl -n kube-system delete cm metricbeat-deployment-config
kubectl -n kube-system delete cm metricbeat-deployment-modules
