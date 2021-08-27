#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# custom aliases
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lah'
alias vim='lvim'
alias grep='grep --colour=auto'
alias cp="cp -i"			# confirm before overwriting something
alias more=less
alias passphrase='shuf /usr/share/dict/words | grep -E "^[a-z]{4,8}$" | head -4'
alias ddgphrase='curl -sS "https://api.duckduckgo.com/?q=passphrase&format=json" | jq ".Answer"'

# use xinput list to find device.
# use xinput list-props DEVICENAME to find prop
# 15 is the device id, 338 is the prop id, 1 is the variable
# xinput set-props 15 338 1

# Source a custom PS1 prompt from an external file
source ~/.foolzprompt
