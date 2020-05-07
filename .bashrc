#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return



if [ -r ~/.bashrc_additions ]; then
    source ~/.bashrc_additions
fi


#function _update_ps1() {
#		    PS1=$(powerline-shell $?)
#	}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#		    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi




if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

alias lsl='ls -l'
alias lal='ls -al'
alias la='ls -a'
alias dir='lsl'
alias dir='lsl'

alias please='sudo'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias clearn='clear; neofetch'
alias celar='clear'
alias celarn='clear; neofetch'
alias gits='git status'
alias gitp='git push'
alias gitpl='git pull'
alias gitcom='git commit -a -m'

alias f='echo  patrick has paid their respects'

eval "$(thefuck --alias)"


set -o vi


#neofetch
