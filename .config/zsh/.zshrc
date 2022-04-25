# History

export HISTFILE="$XDG_STATE_HOME/zsh/.zhistory"

#############################
# TODO: Completion settings #
#############################

# Initialize completion
# See: https://thevaluable.dev/zsh-completion-guide-examples/
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"

# Complete hidden files
_comp_options+=(globdots)

# Enable completers
zstyle ':completion:*' completer _extensions _complete _approximate

# Enable cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

##########
# PROMPT #
##########

export PROMPT=$'\n%F{blue}%~\n%B%F{magenta}∫%f%b '

# Highlighting must be sourced at the end
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
