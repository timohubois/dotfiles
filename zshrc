# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# brew > nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# source ~/.zplug/init.zsh

# brew > zplug
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "modules/history", from:prezto
zplug "zsh-users/zsh-autosuggestions", defer:3
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:1
zplug "zsh-users/zsh-history-substring-search", defer:2

# zplug "zsh-users/zsh-completions"
# zplug "zsh-users/zsh-syntax-highlighting"
# zplug "zsh-users/zsh-history-substring-search"
# zplug "zsh-users/zsh-autosuggestions"

zplug "modules/osx", from:prezto
zplug "plugins/git",   from:oh-my-zsh
#zplug "plugins/history-substring-search", from:oh-my-zsh
#zplug "modules/environment", from:prezto
#zplug "modules/terminal", from:prezto
#zplug "modules/editor", from:prezto
#zplug "modules/directory", from:prezto
#zplug "modules/spectrum", from:prezto
#zplug "modules/utility", from:prezto
# zplug "modules/completion", from:prezto
# zplug "modules/autosuggestions", from:prezto
#zplug "modules/git", from:prezto
#zplug "modules/homebrew", from:prezto
# zplug "modules/syntax-highlighting", from:prezto
# zplug "modules/history-substring-search", from:prezto
#zplug "modules/prompt", from:prezto

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug '~/dotfiles/zsh', from:local, use:'*.zsh'

#zplug load --verbose
zplug load

# zsh settings
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

zstyle ':completion:*' menu select

# aliases
alias ll="ls -lhA"
alias sshhosts="sed -n 's/Host//p' ~/.ssh/config"
