# custom mkdir and cd into it
mkdircd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# add autocomplete for kubectl
source <(kubectl completion bash) # setup autocomplete in bash

# mac style copy and paste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


alias c="clear"

# git shortcuts
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gp="git push"

source ~/.bash_prompt

