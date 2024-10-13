# [yq](https://mikefarah.gitbook.io/yq/)

```bash
brew install yq
```

### Count unique instances of a string, number formatted with thousand separators

```bash
yq '. | unique | length' array-strings.yaml | xargs numfmt  --grouping
```

### Convert yaml to json

```bash
yq dummy.yaml -o=json
```

### Find array item by propery

```yaml
users:
    - name: defaultuser
      user:
          username: kube
          token: foo
    - name: user
      user:
          user: kube
          token: foobar
```

```bash
$ cat config_example | yq '.users[] | select(.name == "user") | .user.token'
```
