#
# ~/.bashrc
#

# Java-Mason stuff
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH

# Doom Emacs Path
export PATH="$HOME/.config/emacs/bin:$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Switch to zsh automatically unless already in zsh
[ -z "$ZSH_VERSION" ] && exec zsh
