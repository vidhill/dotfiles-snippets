Moving cursor around

- Ctrl-A : go to the beginning of line.
- Ctrl-E : go to the end of line.
- Alt-B : skip one word backward.
- Alt-F : skip one word forward.
- Ctrl-U : delete to the beginning of line.
- Ctrl-K : delete to the end of line.
- Alt-D : delete to the end of word.

## Various

Make Directory, with subfolders

```bash
#     -p, --parents
mkdir -p foo/bar/baz
```

## curl

Curl with response status code

```bash
curl --write-out "HTTPSTATUS:%{http_code}" http://www.example.com
```

## grep

Pipe value to grep, use regex

```bash
echo "foo.docker.com/foo/bar:v1.1.85" | grep -E '\/.+'
# echos /foo/bar:v1.1.85
```
