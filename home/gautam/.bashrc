#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# custom prompt in terminal
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias vim='nvim'
alias vpn="sudo protonvpn"
alias editvim="vim ~/.config/nvim/init.vim"
alias config='/usr/bin/git --git-dir=/home/gautam/dotfiles/ --work-tree=/'

export TF_FORCE_GPU_ALLOW_GROWTH=true
export TESSDATA_PREFIX='/home/gautam/Coding/Tesseract'
export RANGER_LOAD_DEFAULT_RC=FALSE

export PATH="$PATH:~/Coding/flutter/bin"
export PATH=$PATH:/home/gautam/.config/coc/extensions/coc-clangd-data/install/11.0.0/clangd_11.0.0/bin
