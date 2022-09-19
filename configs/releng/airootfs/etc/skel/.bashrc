#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="~/bin:$PATH"

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

pfetch

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#complete -C /usr/bin/terraform terraform
#source <(kubectl completion bash)
