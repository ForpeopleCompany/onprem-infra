helm upgrade orgmanager ./helm --install -f target-values.yaml
kubectl rollout restart deployment orgmanager-deployment