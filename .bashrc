# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias _='env | sort | less'
alias dc=docker-compose
alias dot='git --git-dir /home/ec2-user/.dotfiles --work-tree /home/ec2-user'
alias 'kafka-topics'='kafka-topics.sh --bootstrap-server $BROKER_URL'
alias kafkacat='/usr/local/bin/kafkacat -b $BROKER_URL -K='
alias vim=nvim

# prompt
[[ -z $IAM ]] && export IAM=$(cat $HOME/.ssh/authorized_keys | sed 's/^.*== \(.*\)$/\1/')
export PS1="[$IAM@\h \W]\\$ "

