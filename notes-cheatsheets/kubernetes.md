```bash
kubectl get pods -n kube-system
# -n is shorthand for --namespace
```

```bash
kubectl get pods -l  branch=feature-kafka
# -l label - pods that match label
```
