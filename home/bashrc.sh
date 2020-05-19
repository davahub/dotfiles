#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '


#--------------------------------------------------------
# ALIAS
#--------------------------------------------------------
alias ls='ls --color=auto'
alias ll="ls -la"
alias src="source ~/.bashrc"
alias sudb="sudo updatedb"


# -- PACMAN
alias sps="sudo pacman -S"
alias pss="pacman -Ss"
alias pqs="pacman -Qs"
alias pqi="pacman -Qi"
alias spy="sudo pacman -Sy"
alias spyu="sudo pacman -Syu"
alias sprs="sudo pacman -Rs"

# -- GIT
alias g="git"
alias gco="git checkout"
alias gcl="git clone"
alias glog="git log --graph --decorate --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr %an)%Creset' --abbrev-commit --date=relative"
alias gadd="git add"
alias gadd.="git add ."
alias gph="git push"
alias gps="git push"
alias gbr="git branch"
alias gcm="git commit"
alias gst="git status"
alias gpl="git pull --rebase --autostash"
alias gdt="git difftool -y"
alias gmt="git mergetool -y"
alias gsh="git stash push -u -m"
alias gpop="git stash pop stash@{0}"
alias gunstage="git reset HEAD --"
alias glast="git log -1 HEAD"
alias grevert="git checkout --"
alias guntrackfile="git rm --cached"
alias guntrackfolder="git rm -r --cached"



#------------------------------------------------------
#-- GENERAL
#------------------------------------------------------
export NVM_DIR="/home/dava/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# SET HISTORY
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoredups	# Don't store duplicates
export PROMPT_COMMAND='history -a'
shopt -s histappend
# SSH AGENT
if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing) > /dev/null;
fi


#--------------------------------------------------------
# MY ENVIRONMENT VARIABLE (give absolute path, no $HOME or else shortcuts need sh to run)
#--------------------------------------------------------
export myworkspace="/home/dava/workspace"
export myconfig="/home/dava/.1pc-config"
export myworkconfig="/home/dava/workspace/.work/winconfig"
export mypluralsight="/home/dava/workspace/.work/pluralsight-courses"
export mywebpack="/home/dava/workspace/.work/pluralsight-courses/JavaScript/javascript-fundamentals/webpack-starter"

# SET PATHS 
directory='/home/dava/.2shortcuts/directory'
myfile='/home/dava/.2shortcuts/file'
execute='/home/dava/.2shortcuts/execute'
system='/home/dava/.2shortcuts/system'
launcher='/home/dava/.2shortcuts/launcher'
rubyRails='/home/dava/.gem/ruby/2.3.0/bin'
export PATH="${PATH}:/usr/bin/:$directory:$myfile:$execute:$system:$launcher:$rubyRails"

# CONFIG
export NO_AT_BRIDGE=1 # prevent at-spi2-registryd starting when launching gtk3 apps
export GOPATH=/home/dava/workspace/go


#------------------------------------------------------
#-- WELCOME MESSAGE
#------------------------------------------------------
cat ~/.welcome-msg
