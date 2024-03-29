#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ivm='gvim -v'
alias vim='gvim -v'
alias clipboard='xclip -selection clipboard'
alias orpie='opam exec orpie' # This is fedora specific
PS1='[\u@\h \W]\$ '

function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd..'='cd_up'

# RUST stuff
alias cargo_small_check='cargo check --message-format short'

export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/home/dog/.meteor:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
