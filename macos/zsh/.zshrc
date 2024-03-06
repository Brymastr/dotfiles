# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

# git
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit -i
# End of lines added by compinstall

setopt COMPLETE_ALIASES


# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# theme
source $ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f $ZSH_CUSTOM/.p10k.zsh ]] || source $ZSH_CUSTOM/.p10k.zsh


# POWERLEVEL10K
###########################################
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='214'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
ZLE_RPROMPT_INDENT=0

# LEFT_PROMPT
###########################################
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user date time newline dir)
POWERLEVEL9K_DIR_BACKGROUND='032'
POWERLEVEL9K_TIME_FOREGROUND='032'
POWERLEVEL9K_TIME_BACKGROUND='none'
POWERLEVEL9K_DATE_BACKGROUND='none'
POWERLEVEL9K_DATE_FOREGROUND='032'
POWERLEVEL9K_USER_BACKGROUND='none'
POWERLEVEL9K_USER_FOREGROUND='032'
POWERLEVEL9K_DATE_FORMAT=%D{%Y-%m-%d}
POWERLEVEL9K_DATE_ICON=''
POWERLEVEL9K_OS_ICON_BACKGROUND='none'
POWERLEVEL9K_OS_ICON_FOREGROUND='032'
POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL='\uE0B0'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=''
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX_ICON=''
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=''

# RIGHT_PROMPT
###########################################
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(newline vcs node_version)
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)
POWERLEVEL9K_VCS_UNTRACKED_ICON='\uf128'
POWERLEVEL9K_NODE_VERSION_FOREGROUND='234'
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL=''
# POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL=''
# POWERLEVEL9K_EMPTY_LINE_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''

# plugins
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_CUSTOM/plugins/zsh-nvm/zsh-nvm.plugin.zsh

# aliases
source $HOME/.zaliases

# secrets
source $HOME/.zsecrets

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# direnv
eval "$(direnv hook zsh)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
