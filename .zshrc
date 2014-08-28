# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

autoload -Uz compinit
autoload -U colors && colors
compinit
# End of lines added by compinstall
grey='%{^[[37m%}'
PS1="%B%{${fg[red]}%}[%{${fg[magenta]}%}%n%{${fg[yellow]}%}@%{${fg[cyan]}%}%M%{${fg[red]}%}]%b %{${fg[white]}%}%30<..<%~%{${fg[green]}%}%# %{${fg[default]}%}"
