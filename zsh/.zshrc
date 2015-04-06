ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=/opt/dotfiles/zsh
ZSH_THEME="gallois"
HIST_STAMPS="dd/mm/yyyy"

plugins=(gitfast git-extras jsontools sudo systemd python docker archlinux catimg common-aliases fabric web-search)

source $ZSH/oh-my-zsh.sh

# exports
export PATH=$HOME/scripts:$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'
export UPDATE_ZSH_DAYS=13
export NVIM_CONFIG_HOME=/opt/dotfiles/nvim

unset GREP_OPTIONS

alias vim=nvim

source ~/.vars
