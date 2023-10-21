# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Path
USER_PATH="/usr/local/bin:/usr/bin:/usr/sbin:/bin:/opt"
USER_PATH+=":/home/$LOGNAME/.local/bin:/home/$LOGNAME/.cargo/bin"
export PATH="$USER_PATH:$PATH"

# History settings
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Git prompt
source /etc/bash_completion.d/git-prompt
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\w$(__git_ps1 " (%s)")\$ '

# Autocomplete settings
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# History search
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Enabling fzf keybindings
source /usr/share/doc/fzf/examples/key-bindings.bash
export FZF_CTRL_T_OPTS="--preview 'batcat -n --color=always {}'"

# Aliases
alias bat='batcat'
alias cat='batcat -p'
alias ..='cd ..'
alias ~='cd ~'
alias ls='ls --color=auto'

# Wrapper for managing dotfiles using Git
config() {
    GIT_CMD="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"   
    case "$1" in
        status) $GIT_CMD status --untracked-files=no ;;
        ls-tree) $GIT_CMD ls-tree -r --name-only HEAD | tree --fromfile ;;
        track) shift; $GIT_CMD add "$@" ;;
        untrack) shift; $GIT_CMD rm --cached "$@" ;;
        clean) echo "config: 'clean' is not supported." ;;
        *) $GIT_CMD "$@" ;;
    esac
}
