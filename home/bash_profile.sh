#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


# Set our default path
directory='/home/dava/.2shortcuts/directory'
myfile='/home/dava/.2shortcuts/file'
execute='/home/dava/.2shortcuts/execute'
system='/home/dava/.2shortcuts/system'
launcher='/home/dava/.2shortcuts/launcher'
rubyRails='/home/dava/.gem/ruby/2.3.0/bin'

export PATH="${PATH}:/usr/bin/:$directory:$myfile:$execute:$system:$launcher:$rubyRails"

# MY ENVIRONMENT VARIABLE (must give absolute path)
export myworkspace="/home/dava/workspace"
export myhomeconfig="/home/dava/.1homepc-config"
export myworkconfig="/home/dava/workspace/.work/winconfig"
export mywiki="/home/dava/.3installed/mywiki"
