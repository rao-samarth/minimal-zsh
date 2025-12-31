export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Colourful output for ls, grep, etc.

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'



# Navigation

# In case you want dynamic cd for any number of dots, comment the below lines:

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# and uncomment the lines below this

# .. () {
#     local dots=$1
#     if [[ -z "$dots" ]]; then
#         dots=".."
#     fi
    
#     # Count the number of dots and build the path
#     local levels=${#dots}
#     local path=""
#     for ((i=0; i<levels; i++)); do
#         path+="../"
#     done
#     cd "$path"
# }

# stop uncommenting here



# Allow .. to work without parentheses by setting up completion
alias ..=".."


# Don't show venv name twice (we handle it in the prompt)
export VIRTUAL_ENV_DISABLE_PROMPT=1



# Autosuggestions + Syntax Highlighting

# zsh-autosuggestions
if [[ ! -d "$HOME/.zsh-autosuggestions" ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh-autosuggestions
fi
source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
if [[ ! -d "$HOME/.zsh-syntax-highlighting" ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh-syntax-highlighting
fi
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Git Branch Detection is now in the theme file


# Entry Message. Replace this with your name or any message you like.
echo "Hi Samarth!"



# History Settings

HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY


setopt autocd                 # cd by typing directory name
setopt correct                # autocorrect minor command typos
setopt notify                 # notify on background job completion
setopt interactivecomments    # allow comments in interactive mode

# Add local bin
export PATH="$HOME/.local/bin:$PATH"
