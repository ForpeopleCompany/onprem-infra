helm upgrade elastic \
  -f values-elastic.yaml \
  --namespace elastic \
  --create-namespace \
  --install \
elastic/elasticsearch

helm upgrade kibana \
  -f values-kibana.yaml \
  --namespace elastic \
  --create-namespace \
  --install \
elastic/kibana
