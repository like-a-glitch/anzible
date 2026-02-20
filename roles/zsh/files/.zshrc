build_prompt() {
    local exit_part=''
    local git_part=''
    local last_exit=$?
    vcs_info
    if [[ $last_exit -ne 0 ]]; then
        exit_part='%F{red}X %f'
    fi
    if [[ -n "$vcs_info_msg_0_" ]]; then
        git_part=' %F{blue}${vcs_info_msg_0_}%f'
    fi
    PS1="${exit_part}%F{green}%~%f${git_part} $ "
}

autoload -Uz vcs_info
HISTFILE=~/.zsh_history
HISTSIZE=1000000
PATH="$HOME/.local/bin:$PATH"
precmd() { build_prompt }
RPROMPT='%*'
SAVEHIST=1000000
setopt APPEND_HISTORY
setopt AUTO_CD
setopt HIST_IGNORE_ALL_DUPS
setopt PROMPT_SUBST
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '(%b%u)'
zstyle ':vcs_info:git:*' stagedstr '*'
zstyle ':vcs_info:git:*' unstagedstr '*'