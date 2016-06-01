# Linux aliases
alias alf='ls -alF'
cs(){ cd $1 && ls; }
# Usage: "find_non_ascii maybe_contains_some_non_ascii_characters.txt"
alias find_non_ascii="perl -ne 'print \"\$. \$_\" if m/[\x80-\xFF]/'"

# Git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gap='git add -p'
alias gb='git branch'
alias gbb='git branch -avv'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gc='git commit'
alias gca='git commit --amend'
alias gci='git clean -i'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdd='git diff --color-words="[^[:space:]]|([[:alnum:]]|UTF_8_GUARD)+"'
alias gddhh='git diff --color-words="[^[:space:]]|([[:alnum:]]|UTF_8_GUARD)+" HEAD^ HEAD'
alias gdhh='git diff HEAD^ HEAD'
alias gds='git diff --staged'
alias gf='git fetch'
# Usage: "gh 3" or "gh 20"
gh(){ git hist -$1; }
alias ghh='git hist'
# Usage: "gl 3" or "gl 20"
gl(){ git log -$1; }
alias gll='git log'
alias gm='git merge'
alias go='git checkout'
alias gob='git checkout -b'
alias god='git checkout develop'
alias gom='git checkout master'
alias gpl='git pull'
alias gps='git push'
alias grc='git rebase --continue'
alias grefs='git gc --prune=now'
alias grid='git rebase -i develop'
alias grim='git rebase -i master'
alias grpo='git remote prune origin'
alias gs='git status -s'
alias gsh='git stash'
alias gsha='git stash apply'
alias gshl='git stash list'
alias gshp='git stash -p'

# Git completion for aliases
source ~/.git-completion.bash
__git_complete g __git_main
__git_complete ga _git_add
__git_complete gaa _git_add
__git_complete gap _git_add
__git_complete gb _git_branch
__git_complete gbb _git_branch
__git_complete gbd _git_branch
__git_complete gbD _git_branch
__git_complete gc _git_commit
__git_complete gca _git_commit
__git_complete gci _git_clean
__git_complete gcp _git_cherry_pick
__git_complete gd _git_diff
__git_complete gdd _git_diff
__git_complete gddhh _git_diff
__git_complete gdhh _git_diff
__git_complete gds _git_diff
__git_complete gh _git_fetch
__git_complete gh _git_log
__git_complete ghh _git_log
__git_complete gl _git_log
__git_complete gll _git_log
__git_complete gm _git_merge
__git_complete go _git_checkout
__git_complete gob _git_checkout
__git_complete god _git_checkout
__git_complete gom _git_checkout
__git_complete gpl _git_pull
__git_complete gps _git_push
__git_complete grc _git_rebase
__git_complete grid _git_rebase
__git_complete grim _git_rebase
__git_complete grpo _git_remote
__git_complete gsh _git_stash
__git_complete gsha _git_stash
__git_complete gshl _git_stash
__git_complete gshp _git_stash

# Docker aliases
alias di='docker images'
alias dm='docker-machine'
alias drdangle='docker rmi -f $(docker images -f "dangling=true" -q); docker rm -v $(docker ps -a -q -f status=exited)'
dockergo(){ docker-machine start $1 && eval $(docker-machine env $1); }

# Misc aliases
alias venv27='virtualenv -p $(which python2.7) venv'
alias venv34='virtualenv -p $(which python3.4) venv'
alias venv35='virtualenv -p $(which python3.5) venv'

Time12ampm="\$(date +%I:%M)"
GIT_PROMPT_END_USER=" \n${BoldBlue}${Time12ampm}${ResetColor} $ "
GIT_PROMPT_END_ROOT=" \n${BoldBlue}${Time12ampm}${ResetColor} # "
