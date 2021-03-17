# Create file my-secrets

# Create secret from this file
```sh
kubectl create secret generic my-secret --from-file=./my-secrets
kubectl get secret my-secret -o yaml
```
