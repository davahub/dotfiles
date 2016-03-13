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
# cocos
cocos='/opt/cocos2d-x/tools/cocos2d-console/bin:/opt/cocos2d-x/tools/cocos2d-console/plugins/plugin_package'
python2Path='/usr/local/bin'

export PATH="$python2Path:${PATH}:/usr/bin/:$directory:$myfile:$execute:$system:$launcher:$rubyRails:$cocos"
