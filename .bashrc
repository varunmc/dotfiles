# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias _='env | sort | less'
alias dc=docker-compose
alias dot='git --git-dir $HOME/.dotfiles --work-tree $HOME'
alias 'kafka-topics'='kafka-topics.sh --bootstrap-server kafka:9092'
alias kafkacat='/usr/local/bin/kafkacat -b kafka:9092 -K='
