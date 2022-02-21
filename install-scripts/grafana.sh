helm upgrade --install loki grafana/loki-stack \
  --set fluent-bit.enabled=false,promtail.enabled=false,grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false \
  -n grafana \
  --create-namespace

echo "Grafana Password"
kubectl get secret --namespace grafana loki-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo