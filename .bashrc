export PS1="\[\033[38;5;7m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;9m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

alias refresh='. ~/.bashrc'

# Terminal VI mode
set -o vi

# Terminal highlighting
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagaced

# ls aliases
alias ls="ls -F -G"
alias l="ls -la"

# ----
# Path variable additions (bottom to top priority)
# ----

# golang
if [ -d /usr/local/go/bin ]; then
  export PATH="$PATH:/usr/local/go/bin"
fi

# rbenv
if [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)" 
fi

# ----
# Commands to run on startup
# ----
if [[ ! $TERM =~ screen ]]; then
  tmux attach || tmux new
fi
