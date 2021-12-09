# Recreate Python+Redis on Kubernetes

1. Create Deployment yaml file for redis:alpine
2. Create Deployment yaml file for krajewskim/python-api:new
3. Create service yaml file for redis with type ClusterIP (do not name servcie REDIS)
5. Create service yaml file for python with type NodePort
6. Set LOG_LEVEL env to DEBUG for python deployment
7. Set REDIS_HOST env to name of redis service for python deployment
8. Make sure all ports are correct (REDIS=6379 PYTHON-API=5002)
9. Use proper labels
10. Create everything at once with:

```sh
kubectl apply -f .
```

# check everything works 

```sh
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') -- curl python-service:5002/api/v1/info
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') -- /bin/bash -c "curl -XPOST python-service:5002/api/v1/info"
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') -- curl python-service:5002/api/v1/info
```
