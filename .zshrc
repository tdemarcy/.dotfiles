# Navigation:
# Perform the cd command if command is the name of directory
setopt AUTO_CD


# History:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history
# Append $HISTFILE incrementally
setopt INC_APPEND_HISTORY
# Remove older duplicates
setopt HIST_IGNORE_ALL_DUPS
# Ignore command starting with a space
setopt HIST_IGNORE_SPACE


# History search:
autoload -U history-search
# Filter the history on input beginning with the current text
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward


# Misc:
# Try to correct the spelling of all arguments in a line
setopt CORRECT_ALL
# Report command execution time if more than 3 seconds
REPORTTIME=3


# Completion:
autoload -U compinit
compinit
# Enable autocompletion
zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*' menu select


# Prompt:
# https://zserge.com/posts/terminal/
autoload -U colors vcs_info
colors
zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{blue}%b%f %u%c"

_ps1() {
  vcs_info
  GLYPH="▲"
  [ "x$KEYMAP" = "xvicmd" ] && GLYPH="▼"
  PS1="%(?.%F{blue}.%F{red})$GLYPH%f %(1j.%F{green}[%j]%f .)%F{blue}%~%f %(!.%F{red}#%f .)"
  RPROMPT="$vcs_info_msg_0_"
}
_ps1


# vi mode:
zle-keymap-select () {
  _ps1
  zle reset-prompt
}
zle -N zle-keymap-select
zle-line-init () {
  zle -K viins
}
zle -N zle-line-init
# vi keybindings
bindkey -v


# Aliases:
source .bash_aliases