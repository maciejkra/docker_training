# Increase counter on python app

1. Kill redis pod

```sh
kubectl delete pod -l app=redis 
```

2. Verify it starts again, but you've lost data
3. Create volume claim and volume

```sh
kubectl create -f pvc-local.yaml
kubectl get pvc
kubectl create -f pv-nfs00.yaml
kubectl get pv
```

4. Create new deployment yaml file and update it with changes from yaml in this task
5. Apply changes 
6. Update counter
7. Kill redis pod again
8. Verify you still have data
