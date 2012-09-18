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
plugins=(svn git ruby npm node brew)

source $ZSH/oh-my-zsh.sh

# load coreutils
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export CLICOLOR=1
export TERM=xterm-256color
eval `dircolors  ~/.dir_colors`
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# List direcory contents
export LS_OPTIONS='--color'
alias ls='ls $LS_OPTIONS'

#alias ls = 'gls --color=auto'
#alias
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -CF'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias gfw='print "pr8cet4fu72" && ssh -D 7070 wzhao@ssh15.fishnote.net -p 443'

alias mvim="open -a MacVim"

#vim vundle update
alias vundleUp='vim -c "execute \"BundleInstall!\" | q | q"'

# add rvm  
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then   
  source "$HOME/.rvm/scripts/rvm" ;  
fi  

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


# add nvm  
if [[ -s "$HOME/.nvm/nvm.sh" ]]  ; then   
  source "$HOME/.nvm/nvm.sh" ;  
fi  
#. ~/.nvm/nvm.sh

#nginx
alias nginx="sudo /usr/local/Cellar/nginx/1.2.3/sbin/nginx"

