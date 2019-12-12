# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/brycen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt COMPLETE_ALIASES

# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# gcloud.
if [ -f '/Users/brycen/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/brycen/google-cloud-sdk/completion.bash.inc'; fi
if [ -f '/Users/brycen/google-cloud-sdk/path.bash.inc' ]; then source '/Users/brycen/google-cloud-sdk/path.bash.inc'; fi

# kubectl
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# theme
source $ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f $ZSH_CUSTOM/.p10k.zsh ]] || source $ZSH_CUSTOM/.p10k.zsh
POWERLEVEL9K_TIME_FOREGROUND='058'
POWERLEVEL9K_TIME_BACKGROUND='232'
POWERLEVEL9K_DIR_BACKGROUND='032'
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='214'

# plugins
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# aliases
source $HOME/.zaliases