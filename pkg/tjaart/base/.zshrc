# Path to your oh-my-zsh installation.
export ZSH=/home/tjaart/.oh-my-zsh
# ZSH_CUSTOM=$HOME/.oh-my-zsh/custom/plugins
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(adb archlinux aws bundler chruby cp dirhistory docker docker-compose fzf gem git git-extras gitignore history jsontools kitchen knife node npm nvm pass perl pip rake-fast react-native ruby salesforce-cli-zsh-completion sudo systemd taskwarrior timew tmuxinator vagrant virtualenv yarn zsh-navigation-tools)
# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# rehash after installing a package so that completion is available immediately in terminal
zstyle ':completion:*' rehash true

# configure some zsh settings
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source my aliases
source $HOME/.alias

source /usr/share/nvm/init-nvm.sh
source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh
source /home/tjaart/.zsh-custom/plugins/timew/timew-completion.bash

chruby system

# source /usr/share/chruby/auto.sh

# [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R'

export FZF_DEFAULT_OPTS='--height 90%'

eval "$(direnv hook zsh)"
# export TASKRC=~/.task/taskrc
