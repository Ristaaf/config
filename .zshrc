
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/z/zsh-z.plugin.zsh

autoload -U compinit && compinit
zstyle ':completion:*' menu select

alias ll='exa -la --icons --group-directories-first -hH'
alias ls='ls -a --color'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias vim='nvim'
alias clone='git clone git@bitbucket.org:ifs-pd/ifs-technology-client-framework.git'
alias exit='exit 0'
alias man='man --pager=most'
alias bat='batcat'
alias cat='bat'

if ! [[ "$PATH" =~ "/home/rst/.local/bin" ]]
then
    export PATH=/home/rst/.local/bin:$PATH
fi

if ! [[ "$PATH" =~ "/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0:/mnt/c/WINDOWS/System32:/mnt/c/Users/rihase/AppData/Local/Programs/Microsoft\ VS\ Code/bin:" ]]
then
    export PATH=/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0:/mnt/c/WINDOWS/System32:/mnt/c/Users/rihase/AppData/Local/Programs/Microsoft\ VS\ Code/bin:$PATH
fi

eval "$(starship init zsh)"
