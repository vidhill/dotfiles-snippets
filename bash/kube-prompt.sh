#!/bin/bash

# credit: https://pracucci.com/display-the-current-kubelet-context-in-the-bash-prompt.html 

__kube_ps1()
{
    if [ -f ~/.kube/config ]; then
        CO="current-context:"
        # Get current context
        CONTEXT=$(cat ~/.kube/config | grep ${CO} | sed "s/${CO} //")

        if [ -n "$CONTEXT" ]; then
            echo "(k8s: ${CONTEXT})"
        fi
    fi
}
