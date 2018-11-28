# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
if [ -f ~/.env ]; then
  . ~/.env
fi

if [ -f ~/.env_private ]; then
  . ~/.env_private
fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

if [ -f ~/.functions ]; then
  . ~/.functions
fi

if [ -f ~/.functions_private ]; then
  . ~/.functions_private
fi

# Disable corrections
unsetopt CORRECT

eval "$(rbenv init - zsh)"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

eval "$(hub alias -s)"

# zsh-bd
. $HOME/.zsh/plugins/bd/bd.zsh

STRAP_BIN_DIR=~/Users/jdyer/workspace/strap/bin
if [ -d $STRAP_BIN_DIR ]; then
  PATH="$STRAP_BIN_DIR:${PATH}"
fi

eval "$(nodenv init -)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jdyer/workspace/customink/profiles/backend/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jdyer/workspace/customink/profiles/backend/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jdyer/workspace/customink/profiles/backend/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jdyer/workspace/customink/profiles/backend/node_modules/tabtab/.completions/sls.zsh