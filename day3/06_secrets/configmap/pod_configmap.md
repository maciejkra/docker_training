apiVersion: v1
kind: Pod
metadata:
  name: pkad
  labels:
    name: pkad
spec:
  volumes:
    - name: cm-t3-v
      configMap:
        name: t3cm
        items:
          - key: config.toml
            path: awesome_ini_as_toml.toml
  containers:
    - name: pkad
      image: poznajkubernetes/pkad
      volumeMounts:
        - mountPath: /etc/config
          name: cm-t3-v
      env:
        - name: TEST
          value: Poznaj Kubernetes
      resources:
        limits:
          memory: "128Mi"
          cpu: "500m"
      ports:
        - containerPort: 8080