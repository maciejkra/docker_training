```sh
kubectl create -f traefik/
kubectl get svc -n ingress-internal
```
check endpoint port 8080

# Modyfi ingress files and set your hostname

```sh
kubectl create -f  traefik.ingress.yaml
kubectl create -f  python.ingress.yaml
```


# Modify /etc/hosts

place your name as hostname

try to access page mapped to port 80 on traefik

http://maque.kubernetes:30250/python/healthz
http://maque.kubernetes:31153/dashboard/
```
