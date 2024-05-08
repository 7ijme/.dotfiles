# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
# bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tijme/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Add alias for ls with exa
alias ls='exa'
alias la='exa -la'

# More useful aliases
alias n="nvim"

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

