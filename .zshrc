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

#Calculator
autoload -U zcalc

#Enviroment variables
export EDITOR="vim"

#Aliases
alias ls="ls -l -N --color=auto --group-directories-first"
alias lsa="ls -la -N --color=auto --group-directories-first"
alias df="df -h"
alias du="du -h --max-depth=1 | sort -h"
alias ping="grc --colour=auto ping -c5"
alias psaux="grc --colour=auto ps aux"
alias grep="grep --color=auto"
alias py="python"
alias ipy="ipython"
alias pytest="python -m unittest"
alias lpr="lpr -P MFC7860DWR"
alias mountusb="sudo mount -o gid=users,fmask=113,dmask=002"
alias feh="feh -. --auto-rotate -B black"
alias trrm="transmission-remote-cli"
alias chromium-proxy="chromium --proxy-pac-url=https://antizapret.prostovpn.org/proxy.pac"


#Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[path_prefix]='none' #Disable underlining paths
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='none' #Disable underlining path separators

