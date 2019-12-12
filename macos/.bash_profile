# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# gcloud.
if [ -f '/Users/brycen/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/brycen/google-cloud-sdk/completion.bash.inc'; fi
if [ -f '/Users/brycen/google-cloud-sdk/path.bash.inc' ]; then source '/Users/brycen/google-cloud-sdk/path.bash.inc'; fi

# go
export GOPATH=$HOME/Documents/projects/go/
export PATH=$PATH:/Users/brycen/path/

# env
export ASPNETCORE_ENVIRONMENT=local
export NODE_ENV=local

# aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# kubectl
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# istio
export PATH="$PATH:/Users/brycen/path/istio-1.0.6/bin"