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
autoload -U colors vcs_info
colors
zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f'
zstyle ':vcs_info:git:*' check-for-changes true
# %b branch, %u unstaged changes, %c staged changes
zstyle ':vcs_info:git*' formats "%F{blue}%b%f %u%c"


function set-prompt {
  vcs_info
  case ${KEYMAP} in
    (vicmd) GLYPH="▼" ;; # vi command mode
    (main|viins) GLYPH="▲" ;; # vi insert mode
  esac
  # %(?.<success>.<failure>)
  # %j number of jobs
  # %~ working directory
  # %! with privileges?
  PS1="%(?.%F{blue}.%F{red})$GLYPH%f %(1j.%F{green}[%j]%f .)%F{blue}%~%f %(!.%F{red}#%f .)"
  RPROMPT="$vcs_info_msg_0_"
}
set-prompt

function zle-line-init zle-keymap-select {
    set-prompt
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select


# vi keybindings:
bindkey -v
# use backspace to delete
bindkey "^?" backward-delete-char


# History search:
autoload -U history-search
# Filter the history on input beginning with the current text
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward


# Aliases:
source .bash_aliases