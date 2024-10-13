# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

fpath+=($HOME/.zsh/pure)

ZSH_THEME=""
PURE_PROMPT_SYMBOL=''
autoload -U promptinit; promptinit
prompt pure

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vi=nvim
alias vim=nvim

eval "$(zoxide init zsh)"
source <(fzf --zsh)

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH

alias code='code --enable-features=UseOzonePlatform --ozone-platform=wayland'


