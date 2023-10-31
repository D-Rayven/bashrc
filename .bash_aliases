# git aliases
alias ad='git add --all'
alias bla='git branch -la'
alias ckt='git checkout'
alias co='git commit -m'
alias di='git diff --color'
alias egrep='egrep --color=auto'
alias fep='git fetch -p'
alias fgrep='fgrep --color=auto'
alias fix='ad . && co fix && ph'
alias fixr='ad . && co fix && git rebase -i main && ph -f'
alias grep='grep --color=auto'
alias k='kubectl'
alias lo=' git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias ls='ls --color=auto'
alias mrg='git merge'
alias ph='git push'
alias pl='git pull'
alias pods='k get pods -o json | jq '\''.items[].spec.containers[].image'\'''
alias st='git status'
alias po='git push --set-upstream origin \"$(git rev-parse --abbrev-ref HEAD)\"'

# Utils aliases
alias clr='clear'
alias lh='ls -lhutr'
alias lha='ls -lhutra'

# Navigate aliases
alias forgecat='cd ~/src/forge/cat_amania.forge'

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

__git_complete ckt _git_checkout
__git_complete di _git_diff
