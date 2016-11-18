#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export CLICOLOR=1
export TERM=xterm-256color
#export TERM=screen-256color

# load gruvbox color
# source ~/.vim/bundle/gruvbox/gruvbox_256palette.sh

# resolved conflict for git ls
unalias gls
# load coreutils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
# ls color use coreutils
eval `gdircolors -b $HOME/.dir_colors`
alias ls='gls -F --show-control-chars --color=auto'

# add rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# add nvm
if [[ -s "$HOME/.nvm/nvm.sh" ]] ; then
  source "$HOME/.nvm/nvm.sh" ;
  #source "$HOME/.nvm/bash_completion" ;
fi

# add go path
export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# exercism
export PATH="$HOME/Git/exercism:$PATH"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#alias
alias ll='ls -alhF'
alias la='ls -AF'
alias l='ls -CF'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

#alias mvim="open -a MacVim"
alias vi='vim'
alias v='mvim'

#alias rm
alias rm='rm -riv'
alias mv='mv -i'

# sublime text
alias e='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl* . &'

alias cnpm="npm --registry=https://registry.npm.taobao.org"

# bundler rails
alias be='bundle exec'
alias brake='bundle exec rake'
alias rails='bundle exec rails'

#ctags
alias gtags='ctags -R --fields=+l .'
alias erltags='ctags -R --fields=+l --languages=erlang .'
alias rbtags='ctags -R --fields=+l --languages=ruby --exclude=.bundle .'
alias rubytags='ripper-tags -R --exclude=.bundle'

alias zshreload='source ~/.zshrc'

alias scm="rlwrap -r -c -f ~/.mit_scheme_bindings.txt mit-scheme"

alias pc="proxychains4"
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'
