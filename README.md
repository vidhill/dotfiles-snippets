# dotfiles-snippets

Just a space to store my Dotfiles and some snippets

## Cheatsheets

- [Docker](notes-cheatsheets/docker.md)
- [Git](notes-cheatsheets/git.md)
- [Networking](notes-cheatsheets/networking.md)
- [Command line](notes-cheatsheets/command_line.md)
- [Kubernetes - kubectl](notes-cheatsheets/kubernetes.md)

#### Use prettier to prettify all markdown files

`npx prettier -w .`

### Set up spell check pre-commit hook

#### Prerequisites

Copy over custom dictionary

```bash
$ cp git-hooks/.dict.en.pws ~/.config/git/.dict.en.pws
```

Copy helper script into local `bin` folder

```bash
chmod +x git-hooks/aspell-add-word.sh; cp git-hooks/aspell-add-word.sh ~/bin/aspell-add-word.sh
```

#### Copy hook

```bash
$ chmod +x git-hooks/commit-msg-spell-check.sh; cp git-hooks/commit-msg-spell-check.sh .git/hooks/commit-msg
```
