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

if [ -f ~/.bash_alias ]; then
    . ~/.bash_alias
fi

if [ -f ~/.bash_prompt ]; then
   . ~/.bash_prompt
fi

# Better version of ctrl - r history search
# mac: brew install hh
# ubuntu: sudo add-apt-repository ppa:ultradvorka/ppa && sudo apt-get update && sudo apt-get install hh
# then, all platforms: hh --show-configuration >> ~/.bashrc

