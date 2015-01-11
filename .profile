PS1="\[\e[31m\]\u\[\e[32m\]@\[\e[31m\]\h \[\e[32m\]\w \[\e[31m\]\$ \[\e[0m"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
