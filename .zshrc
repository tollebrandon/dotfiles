alias gl="git log --stat"
alias gca="git commit --amend --no-edit"
alias gs="git status"
alias gcm="git commit -m"
alias gap="git add -p"
alias gmff="git merge --ff-only"
alias python="python3"

function gpf() {
  branch_name=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  git push -f origin $branch_name
}

function gp() {
  branch_name=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  git push -u origin $branch_name
}

function grm() {
  git rebase origin/main -i
}

function gap() {
  git add -p
}

eval "$(/opt/homebrew/bin/brew shellenv)"

# PROMPT_USER_AND_HOST='\[\033[01;32m\]\u@\h'cat
# PROMPT_PWD='\[\033[01;34m\]\w\[\033[00m\]'
# GIT_PROMPT_START="${PROMPT_USER_AND_HOST}:${PROMPT_PWD}"
# GIT_PROMPT_END=' $ '

source "/opt/homebrew/opt/zsh-git-prompt/zshrc.sh"
PROMPT='[%B%D{%m-%d %H:%M:%S}%b] %F{magenta}%~%f $(git_super_status)$ '
# PROMPT='$(git_super_status)'

alias src="source ~/.zshrc"
alias cdl="cd ~/code/level"
alias cdrisr="cd ~/code/RISR"


eval "$(rbenv init -)"
