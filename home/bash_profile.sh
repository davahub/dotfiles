#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc


#--------------------------------------------------------
# ALIAS
#--------------------------------------------------------
alias ll="ls -la"

# -- PACMAN
alias p="pacman"
alias sp="sudo pacman"

# -- GIT
alias g="git"
alias gco="git checkout"
alias gcl="git clone"
alias glog="git log"
alias gadd="git add"
alias gph="git push"
alias gps="git push"
alias gbr="git branch"
alias gcm="git commit"
alias gst="git status"
alias gpl="git pull --rebase --autostash"
alias gdt="git difftool -y"
alias gsh="git stash push -u -m"
alias gpop="git stash pop stash@{0}"
alias gun="git reset HEAD --"
alias glast="git log -1 HEAD"


#--------------------------------------------------------
# MY ENVIRONMENT VARIABLE (must give absolute path)
#--------------------------------------------------------
export myworkspace="/home/dava/workspace"
export myconfig="/home/dava/.1homepc-config"
export myworkconfig="/home/dava/workspace/.work/winconfig"
export mypluralsight="/home/dava/workspace/.work/pluralsight-courses"
export mywebpack="/home/dava/workspace/.work/pluralsight-courses/JavaScript/javascript-fundamentals/webpack-starter"


#--------------------------------------------------------
# PATH
#--------------------------------------------------------
# Set our default path
directory='/home/dava/.2shortcuts/directory'
myfile='/home/dava/.2shortcuts/file'
execute='/home/dava/.2shortcuts/execute'
system='/home/dava/.2shortcuts/system'
launcher='/home/dava/.2shortcuts/launcher'
rubyRails='/home/dava/.gem/ruby/2.3.0/bin'
export PATH="${PATH}:/usr/bin/:$directory:$myfile:$execute:$system:$launcher:$rubyRails"
