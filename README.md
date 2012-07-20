dotfiles
========

a quick auto config script for multiple develop environments

the config files include:

* ctags
* gemrc
* gitconfig
* gitignore
* gvimrc
* vimrc
* jshintrc
* npmrc
* zshrc

all files are link to your home directory

##installation

install vim plugins(with vundle) and `ln` config files

    rake vim_config
    
install oh-my-zsh

    rake install_zsh
    
link all dotfiles

    rake ln_dotfiles