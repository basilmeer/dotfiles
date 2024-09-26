export ZSH="$HOME/.oh-my-zsh"

# base oh-my-zsh config
ZSH_THEME="robbyrussell"
plugins=(git rails asdf)

# fire up oh-my-zsh
source $ZSH/oh-my-zsh.sh

# pull in aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# spin up the oh-my-posh prompt
eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/themes/patriksvensson.omp.json)"

# append completions to fpath for asdf
fpath=(${ASDF_DIR}/completions $fpath)

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# asdf init
. "$HOME/.asdf/asdf.sh"

