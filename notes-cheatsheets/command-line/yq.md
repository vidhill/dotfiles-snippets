# [yq](https://mikefarah.gitbook.io/yq/)

```bash
brew install yq
```

Count unique instances of a string, number formatted with thousand separators

```bash
yq '. | unique | length' array-strings.yaml | xargs numfmt  --grouping
```
