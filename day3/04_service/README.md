# Manual exposing
```sh
kubectl get svc
kubectl expose deployment/nginx-deployment --type=NodePort --port=80
kubectl get svc
```

Access new port

# Verify name resolv

```sh
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') curl -- my-app-service
kubectl exec -ti $(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}') curl -- my-app-service.default.svc.cluster.local
```
