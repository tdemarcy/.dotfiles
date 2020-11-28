alias ls='ls --color=auto'
alias grep='grep -color=auto'
alias fgrep='fgrep -color=auto'
alias egrep='egrep -color=auto'
alias ll='ls -l'
alias la='ls -A'

config () {
  if [[ $1 == "clean" ]]; then
    echo "impossible to clean home directory"
  else
    command /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME "$@"
  fi
}
