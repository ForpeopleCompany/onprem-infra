helm upgrade elastic \
  --set replicas=1 \
  --set discovery.type=single-node \
  --namespace elastic \
  --create-namespace \
  --install \
elastic/elasticsearch

helm upgrade kibana \
  --namespace elastic \
  --create-namespace \
  --install \
elastic/kibana
