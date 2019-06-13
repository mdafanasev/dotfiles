# Load colors
autoload -U colors && colors

#History
HISTFILE=~/.zshhistory
SAVEHIST=10000
HISTSIZE=10000
DIRSTACKSIZE=20
setopt extended_history
setopt share_history
setopt append_history
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_no_store

#Prompt
PROMPT="[%F{green}%n%f in %F{yellow}%2d%f]: "

#Globing
setopt extended_glob
setopt braceccl


#Completion
autoload -U compinit && compinit
zstyle ':completion:*' menu select

#Key binding
bindkey -v
bindkey '^[[3~' delete-char

#Enviroment variables
export EDITOR="vim"

#Aliases
alias ls="ls -l -N --color=auto --group-directories-first"
alias lsa="ls -la -N --color=auto --group-directories-first"
alias py="python"
alias dc="docker-compose"

#Powerline
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
powerline-daemon -q
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
