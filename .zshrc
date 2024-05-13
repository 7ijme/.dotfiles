# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
# bindkey -v
stty -ixon
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tijme/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Allow ctrl arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Add alias for ls with exa
alias ls='exa'
alias la='exa -la'

# More useful aliases
alias n="nvim"
alias img="sxiv"

#ntfy
alias alert="curl -H \"Title: Alert\" -H \"Tags: warning\" https://tijmevh.nl:8080/alert -d \"Done with the command!\""

# make a keybind (ctrl + z) to execute fg
bindkey -s '^Z' 'fg'

bindkey -s '^S' 'sesh connect $(sesh list | fzf)'

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add go bin to path
export PATH=$PATH:~/go/bin

source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
