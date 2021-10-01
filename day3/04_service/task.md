# Recreate Python+Redis on Kubernetes

1. Create Deployment yaml file for redis:alpine
2. Create Deployment yaml file for krajewskim/python-api:redis
3. Create service yaml file for redis without NodePort (ClusterIP) type
4. Create service yaml file for python with NodePort type
5. Set LOG_LEVEL env to DEBUG for python deployment
6. Set REDIS_HOST env to name of redis service for python deployment
7. Make sure all ports are correct (REDIS=6379 PYTHON-API=5002)
8. Use proper labels
9. Create everything at once with:

```sh
kubectl create -f .
```

# check everything works 

```sh
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') -- curl python-service:5002/api/v1/info
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') -- /bin/bash -c "curl -XPOST python-service:5002/api/v1/info"
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') -- curl python-service:5002/api/v1/info
```
