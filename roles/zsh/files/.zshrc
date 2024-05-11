HISTFILE=~/.zsh_history
HISTSIZE=10000000
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.scripts:$PATH"
PS1='%(?..%F{red}X %f)%F{green}%~%f $ '
RPROMPT='%*'
SAVEHIST=10000000
setopt APPEND_HISTORY
setopt AUTO_CD
setopt HIST_IGNORE_DUPS
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'