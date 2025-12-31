# minimal.zsh-theme
# A minimal zsh theme with git branch display and python virtualenv detection

# git Branch Detection
autoload -Uz vcs_info

precmd() {
    vcs_info
}

# Format for git branches: [main], [test], [feat-23] etc.
zstyle ':vcs_info:git:*' formats '[%b]'

# python virtual environment detection
venv_prompt() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        echo "($(basename "$VIRTUAL_ENV"))"
    fi
}

# prompt setup
autoload -U colors && colors

PROMPT='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[green]%}%m \
%{$fg[yellow]%}%~%{$reset_color%} \
%{$fg[magenta]%}$(venv_prompt)%{$reset_color%} \
%{$fg[blue]%}${vcs_info_msg_0_}%{$reset_color%} \
» '
