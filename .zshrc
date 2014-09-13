#load gruvbox color
~/.vim/bundle/gruvbox/gruvbox_256palette_osx.sh

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="robbyrussell"
export ZSH_THEME="lovely"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew zsh-syntax-highlighting osx bundler)

source $ZSH/oh-my-zsh.sh

# 加载提示符系统
#autoload -U compinit promptinit
#compinit
#promptinit

homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH

# load coreutils
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export CLICOLOR=1
export TERM=xterm-256color
eval `dircolors  ~/.dir_colors`
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# List direcory contents
alias ls='ls --color'

#alias
alias ll='ls -alhF'
alias la='ls -AF'
alias l='ls -CF'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

#alias mvim="open -a MacVim"
alias vi='vim'
alias v='mvim'
alias nodeg='node --harmony-generators'

#alias rm
alias rm='rm -riv'
alias mv='mv -i'

# sublime text
alias e='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl* . &'

#add rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# add nvm  
if [[ -s "$HOME/.nvm/nvm.sh" ]]  ; then   
  source "$HOME/.nvm/nvm.sh" ;  
  #source "$HOME/.nvm/bash_completion" ;  
fi  
alias cnpm="npm --registry=http://r.cnpmjs.org"

#add go
export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin

# bundler rails
alias rails='bundle exec rails'

#ctags
alias gtags='ctags -R --fields=+l .'
alias erltags='ctags -R --fields=+l --languages=erlang .'
alias rbtags='ctags -R --fields=+l --languages=ruby --exclude=.bundle .'
