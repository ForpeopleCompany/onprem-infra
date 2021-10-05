helm upgrade mongodb \
  --set auth.username=dbuser \
  --set auth.password=qE6dP3mK1jX4rB5aH4cY6uP7lF3vV8pN \
  --set auth.database=orgmanager \
  --namespace mongodb \
  --create-namespace \
  --install \
bitnami/mongodb