# env
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/Documents/projects/go/
export ASPNETCORE_ENVIRONMENT=local
export DOTNET_ENVIRONMENT=local
export NODE_ENV=local
export DEV_DIR=$HOME/dev
export ZSH_CUSTOM=$DEV_DIR/github.com/brymastr/dotfiles/macos/zsh

# PATH
path=('/usr/local/opt/gnu-sed/libexec/gnubin' $path)
path=('/usr/local/bin' $path)
path+=/usr/local/opt/openssl@1.1/bin
path+=/Users/brycen/path/istio-1.0.6/bin
path+=/Users/brycen/path
path+=/usr/local/share/dotnet
fpath=(~/.zsh/completion $fpath)

