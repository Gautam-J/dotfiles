#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# git aware prompt (git branch)
gb() {
        echo -n '(' && git branch 2>/dev/null | grep '^*' | colrm 1 2 | tr -d '\n' && echo  -n ')'
}

git_branch() {
        gb | sed 's/()//'
}

PS1="[\[\033[01;32m\]\u@\h\[\033[00m\]] \[\033[01;34m\]\W\[\033[00m\] \$(git_branch)\$ "
# source ~/.fancy-prompt.sh

# enable vi mode
# set -o vi

# Add color output
alias ls='ls -lFh --color=auto'
alias grep='grep --colour=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# Useful aliases
alias cp="cp -aiv"
alias mv="mv -iv"
alias rm="rm -riv"
alias mkdir="mkdir -pv"
alias df='df -h'
alias du="du -h"
alias dud="du -d 1"
alias ducd="du -s"
alias free='free -h'
alias fd="find . -type d -name"
alias ff="find . -type f -name"
alias r='ranger'
alias v='~/Coding/squashfs-root/usr/bin/nvim'
alias py='python'
alias vpn="sudo protonvpn"
alias editvim="v ~/.config/nvim/init.vim"
alias config='/usr/bin/git --git-dir=/home/gautam/dotfiles/ --work-tree=/'
alias listenvs="conda info --envs"
alias G="| grep"

# Environment variables
export TF_FORCE_GPU_ALLOW_GROWTH=true
export TESSDATA_PREFIX='/home/gautam/Coding/Tesseract'
export RANGER_LOAD_DEFAULT_RC=FALSE
export VISUAL=nvim
export EDITOR=nvim
export TERM=xterm-256color
export FLASK_DEBUG=1

# Add to path
export PATH="$PATH:~/Coding/flutter/bin"
export PATH="$PATH:/home/gautam/.config/coc/extensions/coc-clangd-data/install/11.0.0/clangd_11.0.0/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gautam/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gautam/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gautam/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/gautam/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
