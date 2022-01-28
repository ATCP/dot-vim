#
#	Prompt String
#

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ git:(\1)/'
}

PS1="\[\e[32m\][\u@\h: \W\e[33m\]\$(parse_git_branch)\[\033[32m\]]\[\e[00m\] $ "

#
#	General Alias
#

alias ll="ls -alhGF"
alias kk="ls -alG"
alias ls="ls -G"
alias pwd="pwd -P"
alias cd..="cd .."
alias cdd="cd ../../"
alias cddd="cd ../../../"
alias gcc="gcc -fdiagnostics-color=always"

#
#	Git Abbr
#

alias gits="git status"
alias gitc="git commit -am \"up\""
alias gita="git add"
alias gitp="git push"

#
#	Sorry, my fault.
#

alias vu="vi"
alias vo="vi"
alias ci="vi"
alias co="vi"


git config --global core.editor vim
git config --global user.name "ATCP"
git config --global user.email poppin.ke@gmail.com

export HADOOP_HOME=/home/liuke/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin:/usr/local/cuda-11.3/bin
export LD_LIBRARY_PATH=/usr/local/cuda-11.3/lib64:$LD_LIBRARY_PATH

export LD=/home/liuke/Approximate/ld_preload/atp-impl
export ATP=/home/liuke/Approximate
export PYT=/home/liuke/atp-torch/pytorch
export torch=/home/liuke/atp-torch/torch
export torchcli=/home/liuke/atp-torch/torch-atp-eval
export ke=/home/liuke
export logs=/home/liuke/hadoop/logs/userlogs
