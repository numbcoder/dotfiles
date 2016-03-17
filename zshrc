# zplug https://github.com/b4b4r07/zplug
# Plugins
zplug "b4b4r07/zplug"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
# Support oh-my-zsh plugins and the like
zplug "plugins/git", from:oh-my-zsh, if:"which git"
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "themes/muse", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
    #printf "Install? [y/N]: "
    #if read -q; then
        #echo; zplug install
    #fi
#fi
# Then, source plugins and add commands to $PATH
zplug load --verbose

# Customize to your needs...
# autoload
autoload -Uz compinit && compinit
autoload -U promptinit && promptinit
autoload -Uz colors && colors

# load gruvbox color
source ~/.vim/bundle/gruvbox/gruvbox_256palette_osx.sh

# ls color use coreutils
eval `gdircolors -b $HOME/.dir_colors`
alias ls='gls -F --show-control-chars --color=auto'

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

alias pe="proxychains4 open /Applications/Emacs.app"
