#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '


#--------------------------------------------------------
# SYSTEM
#--------------------------------------------------------
#-- SET HISTORY
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoredups   # Don't store duplicates
export PROMPT_COMMAND='history -a'
shopt -s histappend

#-- SSH AGENT
if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing) > /dev/null;
fi




#--------------------------------------------------------
# ALIAS
#--------------------------------------------------------
alias ls='ls --color=auto'
alias ll="ls -la"
alias src="source ~/.bashrc"
alias sudb="sudo updatedb"
alias supd="sudo updatedb"
alias loc="sudo updatedb && locate"
alias sys="systemctl"
alias ssys="sudo systemctl"
alias ssctl="sudo systemctl"
alias sleaf="sudo leafpad"
alias wifi="iwctl"



#--------------------------------------------------------
# PACMAN
#--------------------------------------------------------
alias sps="sudo pacman -S"
alias pss="pacman -Ss"
alias pqs="pacman -Qs"
alias pqi="pacman -Qi"
alias spy="sudo pacman -Sy"
alias spyu="sudo pacman -Syu"
alias sprs="sudo pacman -Rs"

#-- YAY
alias yss="yay -Ss"
alias ys="yay -S"



#----------------------------------------
#--  GIT
#----------------------------------------
alias g="git"
alias gst="git-id && git branch"
alias gs="git-id"
alias gcm="git commit -m"
alias gcma="git commit -am"
# LOG
alias glog="git log -n 8 --graph --decorate --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr %an)%Creset' --abbrev-commit --date=relative"
alias glog15="git log -n 15 --graph --decorate --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr %an)%Creset' --abbrev-commit --date=relative"
alias glogall="git log --graph --decorate --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr %an)%Creset' --abbrev-commit --date=relative"
ghis() { gitk "$(git-list "$1")";  }
# STAGING
alias gadd.="git add ."
gadd() {
    git-list "$1" 2> /dev/null
    fpath=$(git rev-parse --git-dir)
    filename="$fpath/gitlistfiles.txt"
    n=1
    while read line; do
    # reading each line
    echo "File $n : $line"
    git add "$line"
    n=$((n+1))
    done < $filename
}
gunstage() {
    git-list "$1" 2> /dev/null
    fpath=$(git rev-parse --git-dir)
    filename="$fpath/gitlistfiles.txt"
    n=1
    while read line; do
    # reading each line
    echo "File $n : $line"
    git reset HEAD -- "$line"
    n=$((n+1))
    done < $filename
}
grevert() {
    git-list "$1" 2> /dev/null
    fpath=$(git rev-parse --git-dir)
    filename="$fpath/gitlistfiles.txt"
    n=1
    while read line; do
    # reading each line
    echo "File $n : $line"
    git checkout -- "$line"
    n=$((n+1))
    done < $filename
}
alias glast="git log -1 HEAD"
alias gpl="git pull --rebase --autostash"
alias gplps="git pull --rebase --autostash && git push"
# BRANCH
alias gcl="git clone"
alias gbr="git branch"
alias gbrd="git branch -d"
alias gbrr="git branch -r"
alias gco="git checkout"
alias greb="git rebase"
alias grebcon="git rebase --continue"
gcobr() { git checkout "$1" && git branch; }
# DIFF
gdt() { 
    if [ -z "$1" ]; then
      git difftool -y
    fi
    git-list "$1" 2> /dev/null
    fpath=$(git rev-parse --git-dir)
    filename="$fpath/gitlistfiles.txt"
    n=1
    while read line; do
    echo "File $n : $line"
    git difftool -y "$line"
    n=$((n+1))
    done < $filename
}
gdtc() { 
    if [ -z "$1" ]; then
      git difftool -y --cached
    fi
    git-list "$1" 2> /dev/null
    fpath=$(git rev-parse --git-dir)
    filename="$fpath/gitlistfiles.txt"
    n=1
    while read line; do
    echo "File $n : $line"
    git difftool -y --cached "$line"
    n=$((n+1))
    done < $filename
}
# merge
alias gmerge="git merge"
alias gmt="git mergetool -y"
# stash
alias gstash="git stash push -u -m"
alias gstashls="git stash list"
alias gstashapply="git stash apply "
alias gstashdrop="git stash drop "
alias gstashrm="git stash drop "
# push
alias gps="git push"
alias gph="git push"
alias gpsbr="git push --set-upstream origin "



#------------------------------------------------------
#-- APPLICATION
#------------------------------------------------------

#-- NODE
export NVM_DIR="/home/dava/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#-- GO
export GOPATH=/home/dava/workspace/go



#--------------------------------------------------------
# DIRECTORIES
#--------------------------------------------------------
export MYCONFIG_DIR="/home/dava/.1homepc"
export myworkspace="/home/dava/workspace"
export myhomepc="/home/dava/.1homepc"
export mywinconfig="/home/dava/workspace/.work/winconfig"
export mypluralsight="/home/dava/workspace/.work/pluralsight-courses"



#--------------------------------------------------------
# PATHS
#--------------------------------------------------------
# give absolute path, no $HOME or else shortcuts need sh to run
directory='/home/dava/.2shortcuts/directory'
myfile='/home/dava/.2shortcuts/file'
execute='/home/dava/.2shortcuts/execute'
system='/home/dava/.2shortcuts/system'
launcher='/home/dava/.2shortcuts/launcher'
rubyRails='/home/dava/.gem/ruby/2.3.0/bin'
export PATH="${PATH}:/usr/bin/:$directory:$myfile:$execute:$system:$launcher:$rubyRails"



#------------------------------------------------------
#-- OTHERS
#------------------------------------------------------
cat ~/.welcome-msg
# prevent at-spi2-registryd starting when launching gtk3 apps
export NO_AT_BRIDGE=1 

