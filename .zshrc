if [ -z "$TMUX" ]
then
	tmux
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt share_history
setopt APPEND_HISTORY

bindkey -v

autoload -U compinit && compinit
zstyle ':completion:*' menu select

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/z/zsh-z.plugin.zsh

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias exit='exit 0'
alias vim='nvim'

alias clone='git clone git@bitbucket.org:ifs-pd/ifs-technology-client-framework.git'
alias gs='git status'

alias ll='exa -l --icons --group-directories-first -hH'
alias la='exa -la --icons --group-directories-first -hH'

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export EDITOR="nvim"
export PATH=$PATH:/usr/local/go/bin:~/.cargo/bin

if ! [[ "$PATH" =~ "/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0:/mnt/c/WINDOWS/System32:/mnt/c/Program\ Files/Microsoft\ VS\ Code/bin:" ]]
then
	    export PATH=/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0:/mnt/c/WINDOWS/System32:/mnt/c/Program\ Files/Microsoft\ VS\ Code/bin:$PATH
fi

eval "$(starship init zsh)"

echo -e ""
neofetch
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# sudo rm -r /tmp/.X11-unix
# ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix
