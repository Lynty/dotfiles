alias config='/usr/bin/git --git-dir=/Users/ldong/.cfg/ --work-tree=/Users/ldong'

alias kg="kubectl get"
alias kdl="kubectl delete"
alias kc="kubectl create -f"
alias kdb="kubectl describe"
alias ke="kubectl explain"
alias kcc="kubectl create"


source <(kubectl completion bash)

complete -C /Users/ldong/bin/vault vault
