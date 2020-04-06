# env
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/Documents/projects/go/
export ASPNETCORE_ENVIRONMENT=local
export NODE_ENV=local
export DEV_DIR=$HOME/dev
export ZSH_CUSTOM=$DEV_DIR/github.com/brymastr/dotfiles/ubuntu/zsh

# PATH
path=('/usr/local/opt/gnu-sed/libexec/gnubin' $path)
path=('/home/brycen/path' $path)
path+=/usr/local/bin
path+=/usr/local/opt/openssl@1.1/bin
path+=/usr/local/share/dotnet
