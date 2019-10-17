#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc


#--------------------------------------------------------
# ALIAS
#--------------------------------------------------------
alias p="pacman"
alias sp="sudo pacman"
alias g="git"


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
