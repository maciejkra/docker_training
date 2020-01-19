# Expose directly

Run commands to expose pod and find its port

```sh
kubectl expose pod myapp-pod --type=NodePort --port=80
kubectl get svc
kubectl get svc myapp-pod  -o json
kubectl get svc myapp-pod  -o jsonpath='{.spec.ports[0].nodePort}'
```

# Expose through service

```sh
kubectl delete svc myapp-pod
kubectl apply -f service.yaml
kubectl get svc
kubectl exec -ti myapp-pod cat /etc/resolv.conf
```

# Create google service

```sh
kubectl create -f .\google.service.yaml
kubectl exec -ti myapp-pod curl google-service
```
