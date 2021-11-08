PATH="/usr/local/bin:$(getconf PATH)"
# Above line is necessary as an OSX workaround
eval "$(jenv init -)"

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Sites/kubeclj:$PATH"
export PATH="$HOME/Sites/sdf/bin:$PATH"
export PATH="$HOME/Sites/sh/bin:$PATH"

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
alias gf="git fetch -p"
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
alias df="dotf fetch -p"
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

# frb - Rebases a local branch with fussy found branch
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
alias v="vim"
alias x="exit"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$(starship init bash)"
export PATH="/Users/calbrechtbuehler/Sites/sh/bin:$PATH"

if [ -f ~/.bash_extra ];
then source ~/.bash_extra;
fi
