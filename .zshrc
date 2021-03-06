# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pixelmuerto"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi
alias rake='noglob rake'
zstyle ':completion:*' special-dirs true
# bye zsh: correct ‘lg’ to ‘log’ [nyae]?
unsetopt correct_all

# added by travis gem
[ -f /Users/pablo/.travis/travis.sh ] && source /Users/pablo/.travis/travis.sh
