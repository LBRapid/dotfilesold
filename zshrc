# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
if [ -f ~/.env ]; then
  . ~/.env
fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Disable corrections
unsetopt CORRECT

eval "$(rbenv init - zsh)"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# zsh-bd
. $HOME/.zsh/plugins/bd/bd.zsh

# fh - search history
fh() {
  eval $(([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# fcoc - checkout git commit

fcoc() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}

# fshow - git commit browser
fshow() {
  local out sha q
  while out=$(
      git log --decorate=short --graph --oneline --color=always |
      fzf --ansi --multi --no-sort --reverse --query="$q" --print-query); do
    q=$(head -1 <<< "$out")
    while read sha; do
      [ -n "$sha" ] && git show --color=always $sha | less -R
    done < <(sed '1d;s/^[^a-z0-9]*//;/^$/d' <<< "$out" | awk '{print $1}')
  done
}
