alias rfx="ruff . --fix"
alias rf="ruff ."
alias fl="flake8"

alias aram="alembic revision --autogenerate -m"
alias ara="alembic revision --autogenerate"
alias amh="alembic merge heads"
alias amhm="alembic merge heads -m"
alias auh="alembic upgrade heads"
alias ad="alembic downgrade"

alias pst="pytest"

alias gco="git co"
alias gcob="git cob"
alias gbr="git br"
alias gbrd="git branch -d"
alias gbrD="git branch -D"
alias gst="git st"
alias gpo="git push origin"
alias gpoh="git push origin HEAD"
alias gpof="git push origin HEAD --force"
alias gbs="git branch --show-current"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gsh="git stash"
alias gshm="git stash -m"
alias gshl="git stash list"
alias gsha="git stash apply"
alias gshp="git stash pop"
alias gshc="git stash clear"
alias gshd="git stash drop"

gpr() {
  git_pull_rebase.sh $1
}

gl() {
  git_recent_branches.sh
}
