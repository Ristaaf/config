# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

# Source nix

if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

# Source plugins

. ~/.zsh_plugins.sh

# Aliases

alias ls='ls -Al --color'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias vim='nvim'
alias clone='git clone git@bitbucket.org:ifs-pd/ifs-technology-client-framework.git'
alias exit='exit 0'

# Paths
#
export PATH=/home/rst/.local/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

