## Things that I should know offhand but still need to check

```bash
kubectl get pods -n kube-system
# -n is shorthand for --namespace
```

```bash
kubectl get pods -l  branch=feature-kafka
# -l label - pods that match label
```

```bash
kubectl run http --image=katacoda/docker-http-server:latest --port=80
# create a deployment called http with the specified image & replicas
```

```bash
kubectl scale deployment http --replicas=3
# scale deployment
```

```bash
kubectl expose deployment http --port=80 --type=NodePort
# creates a Nodeport type service
```

```bash

```
