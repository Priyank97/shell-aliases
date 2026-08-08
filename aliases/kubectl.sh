alias k='kubectl'
alias kd='kubectl describe'

alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgn='kubectl get nodes'

alias kl='kubectl logs -f'

alias kctxg='kubectl config get-contexts'
alias kctxs='kubectl config use-context'
alias kunsetns='kubectl config unset contexts.$(kubectl config current-context).namespace'
alias ksetns='kubectl config set-context --current --namespace'