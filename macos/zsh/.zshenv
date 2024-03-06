# env
export NVM_DIR="$HOME/.nvm"
export ASPNETCORE_ENVIRONMENT=local
export DOTNET_ENVIRONMENT=local
export DEV_DIR=$HOME/dev
export ZSH_CUSTOM=$DEV_DIR/github.com/brymastr/dotfiles/macos/zsh
export AWS_PROFILE=development
export NODE_ENV=local
export NVM_LAZY_LOAD=true
export NVM_LAZY=1
export NVM_COMPLETION=true
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"


# PATH
path=('/usr/local/opt/gnu-sed/libexec/gnubin' $path)
path=('/usr/local/bin' $path)
path=($GOBIN $path)
path=('/Users/bdorsay/.local/bin' $path)
# fpath=(~/.zsh/completion $fpath)
. "$HOME/.cargo/env"
