# custom mkdir and cd into it
mkdircd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# add autocomplete for kubectl
source <(kubectl completion bash) # setup autocomplete in bash

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


source ~/.bash_prompt

