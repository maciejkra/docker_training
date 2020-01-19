# Recreate Python+Redis on Kubernetes

1. Push python-api:redis image to local repository
2. Create Deployment yaml file for redis 
3. Create Deployment yaml file for python-api:redis from local repository
4. Set LOG_LEVEL env to DEBUG on python deployment
5. Set REDIS_HOST env to name of redis service
7. Make sure all ports are correct
8. Use proper labels
9. Create service yaml file for redis without NodePort type
10. Create service yaml file for python with NodePort type
11. Create everything at once with:

```sh
kubectl create -f .
```

# check everything works 

```sh
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') curl python-service:5002/api/v1/info
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') -- /bin/bash -c "curl -XPOST python-service:5002/api/v1/info"
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') curl python-service:5002/api/v1/info
```
