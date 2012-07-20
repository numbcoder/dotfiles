# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="cloud"
export ZSH_THEME="robbyrussell"

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

# Customize to your needs...

D=$'\e[37;40m'
PINK=$'\e[35;40m'
GREEN=$'\e[32;40m'
ORANGE=$'\e[33;40m'

hg_ps1() {
	hg prompt "{${D} on ${PINK}{branch}}{${D} at ${ORANGE}{bookmark}}{${GREEN}{status}}" 2> /dev/null
}

#alias
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -CF'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias gfw='print "pr8cet4fu72" && ssh -D 7070 wzhao@ssh15.fishnote.net -p 443'

# add rvm  
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then   
  source "$HOME/.rvm/scripts/rvm" ;  
fi  

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
