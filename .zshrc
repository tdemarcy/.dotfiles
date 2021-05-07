# Path:
export PATH="/usr/local/bin:/usr/bin:/usr/sbin:/bin:/opt"


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

zstyle ':vcs_info:*' stagedstr "%F{green} ●%f"
zstyle ':vcs_info:*' unstagedstr "%F{yellow} ●%f"
zstyle ':vcs_info:git:*' check-for-changes true
# %b branch, %u unstaged changes, %c staged changes
zstyle ':vcs_info:git*' formats "%F{blue}%b%f%u%c"

function set-prompt {
  vcs_info
  if [[ ${KEYMAP} == "vicmd" ]]
  then
    GLYPH="▼" # vi command mode
  else
    GLYPH="▲"
  fi
  # %(?.<success>.<failure>)
  # %j number of jobs
  # %~ working directory
  # %! with privileges?
  PS1="%(?.%F{blue}.%F{red})$GLYPH%f %(1j.%F{blue}[%j]%f .)%F{blue}%3~%f %(!.%F{red}◆%f .)"


  # python virtual env
  if [[ ${VIRTUAL_ENV} == "" ]]
  then
    VIRTUAL_ENV_PROMPT=""
  else
    VIRTUAL_ENV_PROMPT="(${VIRTUAL_ENV##*/}) "
  fi
  RPROMPT="%F{blue}$VIRTUAL_ENV_PROMPT%f$vcs_info_msg_0_"
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
bindkey '^?' backward-delete-char
bindkey -M vicmd '^?' backward-delete-char


# History search:
autoload -U history-search
# Filter the history on input beginning with the current text
bindkey '\e[A' history-beginning-search-backward
bindkey -M vicmd '\e[A' history-beginning-search-backward
bindkey -M vicmd k history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
bindkey -M vicmd '\e[B' history-beginning-search-forward
bindkey -M vicmd j history-beginning-search-forward


# dircolors
eval "$(dircolors ~/.dircolors)";


# Aliases:
source $HOME/.aliases
