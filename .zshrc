# navigation
setopt AUTO_CD
setopt CORRECT

# prompt
PROMPT="%~ > "

# vi keybindings
bindkey -v

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

# completion
autoload -Uz compinit
compinit

# aliases
source ~/.bash_aliases

