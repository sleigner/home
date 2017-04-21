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
export PATH=./node_modules/.bin:$JAVA_HOME/bin:$PATH
alias ssh='ssh -X'
alias lsd='ls -harlS'
alias tmux='TERM=xterm-256color tmux'
alias tx='tmux attach-session'
alias vim=nvim
alias rb='perl /Users/anapitupulu/p4/anapitupulumac/depot/online/scripts/mainline/submit_review_board.pl'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export P4CONFIG=.p4conf
