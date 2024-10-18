## Github

### Update list of branches

```sh
$ git remote update origin --prune
```

### Commit but skip pre-commit hooks, use with caution!

```sh
$ git commit --no-verify
```

```sh
$ git rebase --committer-date-is-author-date --interactive origin/main 
```

### Rename Branch Locally

```sh
$ git branch -m new-name
```

### Rename branch remote

_Delete the old-name remote branch and push the new-name local branch._

```sh
$ git push origin :old-name new-name
```

### Remove file from staged commit without deleting local file

```sh
$ git rm --cached unwanted_file.txt
```
