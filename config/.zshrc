###############################################################################
# Paths                                                                       #
###############################################################################

ZSH_DISABLE_COMPFIX="true"

#export PATH="$PATH:/usr/local/bin"
#export PATH="$PATH:/usr/local/sbin"
export ZSH=$HOME/.oh-my-zsh

###############################################################################
# Themes                                                                      #
###############################################################################

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mh"

###############################################################################
# Plugins to load                                                             #
###############################################################################

# Plugins to load
plugins=( brew git history osx pip zsh-completions zsh-autosuggestions zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

###############################################################################
# User configuration                                                          #
###############################################################################

# Preferred editor
export EDITOR="code -w"

# load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

###############################################################################
# Aliases                                                                     #
###############################################################################

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Reload the shell
alias reload="exec ${SHELL} -l"

# Shortcuts
alias ping="prettyping --nolegend"
alias myip="ipconfig getifaddr en0"

# Brew
alias bup="brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy"
