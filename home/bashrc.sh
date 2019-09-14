#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


#------------------------------------------------------
#-- START SSH AGENT 
#------------------------------------------------------
if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing) > /dev/null;
fi


#------------------------------------------------------
#-- HISTORY
#------------------------------------------------------
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoredups	# Don't store duplicates
export PROMPT_COMMAND='history -a'
shopt -s histappend


#------------------------------------------------------
#-- OTHERS
#------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


#------------------------------------------------------
#-- WELCOME MESSAGE
#------------------------------------------------------
cat ~/.welcome-msg
