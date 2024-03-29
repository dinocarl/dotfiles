# PS4='+ $EPOCHREALTIME\011 '
# exec 3>&2 2>/tmp/bashstart.$$.log
# set -x

PATH="/usr/local/bin:$(getconf PATH)"
# Above line is necessary as an OSX workaround
source ~/.bashrc  # get my Bash aliases

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore node_modules -g ""'

# vault alias
alias vlt="vault login -method=ldap username=calbrechtbuehler"

# git aliases
alias g="git"
alias gs="git status"
alias ga="git add"
alias gf="git fetch --all --prune --tags"
alias ghs="git hist"
alias grb="git rebase"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gdb="git branch -D"
alias gcm="git commit -m"
alias gac="git commit --amend --no-edit"
alias gaac="git commit -a --amend --no-edit"
alias gpb="git push origin"
alias gff="git merge --ff-only"
# for gitlab projects
alias glmail="git config user.email \"8439647-dinocarl@users.noreply.gitlab.com\""
# for creating a uuid
alias muuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]' | pbcopy && pbpaste && echo"

# for managing dotfiles
alias dotf="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias d="dotf"
alias ds='dotf status'
alias da="dotf add"
alias df="dotf fetch --all --prune --tags"
alias dhs="dotf hist"
alias drb="dotf rebase"
alias dco="dotf checkout"
alias dcb="dotf checkout -b"
alias ddb="dotf branch -D"
alias dcm="dotf commit -m"
alias dac="dotf commit --amend --no-edit"
alias daac="dotf commit -a --amend --no-edit"
alias dpb="dotf push origin"
alias dff="dotf merge --ff-only"

# FZF-Enchanced git
# fcb - (create and track a branch from remote) Creates and tracks a remote branch
ftb() {
  git checkout --track $(git branch -r | fzf)
}

# fco - checkout git branch/tag
fco() {
  local tags branches target
  branches=$(
    git --no-pager branch --all \
      --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)" \
    | sed '/^$/d') || return
  tags=$(
    git --no-pager tag | awk '{print "\x1b[35;1mtag\x1b[m\t" $1}') || return
  target=$(
    (echo "$branches"; echo "$tags") |
    fzf --no-hscroll --no-multi -n 2 \
        --ansi) || return
  git checkout $(awk '{print $2}' <<<"$target" )
}

# fdb - Deletes a local branch
fdb() {
  git branch -D $(git branch | fzf)
}

# fdb - Deletes a local branch
fpb() {
  git push origin $(git branch | fzf)
}

# frb - Rebases a local branch with fuzzy found branch
frb() {
  local tags branches target
  branches=$(
    git --no-pager branch --all \
      --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)" \
    | sed '/^$/d') || return
  tags=$(
    git --no-pager tag | awk '{print "\x1b[35;1mtag\x1b[m\t" $1}') || return
  target=$(
    (echo "$branches"; echo "$tags") |
    fzf --no-hscroll --no-multi -n 2 \
        --ansi) || return
  git rebase $(awk '{print $2}' <<<"$target" )
}

# vim alias
# make sure to use the homebrew version to keep it up-to-date
alias   v=/opt/homebrew/bin/vim
alias  vi=/opt/homebrew/bin/vim
alias vim=/opt/homebrew/bin/vim

alias x="exit"

alias srcenv="source .env"
alias genpw="LC_ALL=C tr -dc </dev/urandom "[:graph:]" | head -c 16 | tee tmp | pbcopy"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$(starship init bash)"

# if [ -f ~/.bash_extra ];
# then source ~/.bash_extra;
# fi

# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
# echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(pyenv init -)"' >> ~/.bashrc
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/calbrechtbuehler/Sites/sh/bin:$PATH"
export PATH="/Users/calbrechtbuehler/bin:$PATH"
. "$HOME/.cargo/env"
export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain gateless --domain-owner 546781284141 --query authorizationToken --output text`

complete -C /usr/local/bin/terraform terraform

# set +x
# exec 2>&3 3>&-
