Do this first!

```sh
kubectl config current-context
```

Really verbose

```sh
kubectl get pods -v=9
```

Get pods for my project

```sh
kubectl get pods -l app=myapp
```

Get specific pod name

```sh
kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}'
```

Gell all logs

```
kubectl logs -l app=myapp
```

Some hardcore stuff

```
kubectl delete svc --all
```

Save the manifest of a running pod
```sh
kubectl get pod <name> -o yaml > pod.yml

```

```sh
kubectl get all
```
