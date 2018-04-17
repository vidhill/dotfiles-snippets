## Github

Update list of branches

```
git remote update origin --prune
```

Commit but skip pre-commit hooks, use with caution!

```
git commit --no-verify
```

Rename Branch Locally

```
git branch -m new-name
```

Rename branch remote
_Delete the old-name remote branch and push the new-name local branch._

```
git push origin :old-name new-name
```



