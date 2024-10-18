## Things that I should know offhand but still need to check

```bash
$ kubectl get pods -n kube-system
# -n is shorthand for --namespace
```

```bash
$ kubectl get pods -l  branch=feature-kafka
# -l label - pods that match label

# analogous
kubectl get pods -l="name=bad-frontend"
kubectl get pods --selector="name=bad-frontend"

```

```bash
$ kubectl run http --image=katacoda/docker-http-server:latest --port=80
# create a deployment called http with the specified image & replicas
```

```bash
$ kubectl scale deployment http --replicas=3
# scale deployment
```

```bash
$ kubectl expose deployment http --port=80 --type=NodePort
# creates a Nodeport type service
```

```bash
$ kubectl apply -f spec.yaml
# apply ammended spec file, updates resource..
```

```bash
# update image on deployment
$ kubectl set image deployment/http http=docker.io/katacoda/docker-http-server:latest
```

### Change namespace for the current context

```bash
$ kubectl config set-context --current --namespace=kube-system
```

Print out namespace set for the current context

```bash
$ kubectl config view --minify | grep namespace:
```
