
Moving cursor around

* Ctrl-A : go to the beginning of line.
* Ctrl-E : go to the end of line.
* Alt-B : skip one word backward.
* Alt-F : skip one word forward.
* Ctrl-U : delete to the beginning of line.
* Ctrl-K : delete to the end of line.
* Alt-D : delete to the end of word.

Curl with response status code
``` bash
curl --write-out "HTTPSTATUS:%{http_code}" http://www.example.com
```
