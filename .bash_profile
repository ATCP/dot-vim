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
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
