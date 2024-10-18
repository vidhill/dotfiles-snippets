Moving cursor around

-   Ctrl-A : go to the beginning of line.
-   Ctrl-E : go to the end of line.
-   Alt-B : skip one word backward.
-   Alt-F : skip one word forward.
-   Ctrl-U : delete to the beginning of line.
-   Ctrl-K : delete to the end of line.
-   Alt-D : delete to the end of word.

## Various

-   [Tools](./tools/README.md)

Make Directory, with subfolders

```bash
$ mkdir -p foo/bar/baz
#       -p, --parents
```

## curl

Curl with response status code

```bash
$ curl --write-out "HTTPSTATUS:%{http_code}" http://www.example.com
```

### Grep

Grep globs

```bash
$ grep searchTerm *.md
```

Grep recursive, find search term in current folder & subfolders

```bash
$ grep -r searchTerm .
```

```bash
$ grep -r searchTerm folder/sub
```

Grep but use `.gitignore` to ignore items

```bash
$ git grep searchTerm *.md
```

Pipe value to grep, use regex to pick substring matching regex pattern

```bash
$ echo "foo.docker.com/foo/bar:v1.1.85" | grep -oE '\/.+'
# echo-s /foo/bar:v1.1.85
```

### Find

```bash
$ find . -name "*.js"
```

Find but exclude `node_modules` folder

```bash
$ find . -path ./node_modules -prune -false -o -name "*.test.js
```

### Find and grep within files

```bash
$ find . -name "*.spec.js" | xargs grep "describe"
```
