# https://wiki.archlinux.org/index.php/Zsh#Configuring_.24PATH
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export PATH=$PATH:$(ruby -e 'puts Gem.user_dir')/bin
