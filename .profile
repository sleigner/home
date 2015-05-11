#
# p4 path: //depot/unix/etc/skel/local.profile
# git path for cfengine: common/redhat-profiles/skel/local.profile 
#
# This file is controlled by root. For user changes,
# please edit ~/.profile-user.
#
if [ -f /etc/.profile ] ; then
        . /etc/.profile
fi

if [ -f ~/.profile-user ] ; then
        . ~/.profile-user
        source ~/.profile-user
fi

export P4EDITOR='vim'
export P4DIFF='vimdiff -O'
export PS1="\n\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]\h\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\n(\[\[\e[37;1m\]! \!\[\e[32;1m\])-> \[\e[0m\]"
export JAVA_HOME=$HOME/jdk/
export PATH=$JAVA_HOME/bin:$PATH
alias ssh='ssh -X'
alias ls='ls --color'
alias lsd='ls -harlS'
alias tmux='TERM=xterm-256color tmux'
alias tx='tmux attach-session'
