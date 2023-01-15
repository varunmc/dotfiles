# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias _='env | sort | less'
alias consume='kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic'
alias 'avro-consume'='kafka-avro-console-consumer --bootstrap-server kafka:9092 --property schema.registry.url=http://registry:8081 --topic'
alias dc=docker-compose
alias dcl='docker-compose logs'
alias dot='git --git-dir $HOME/.dotfiles --work-tree $HOME'
alias kcat='/usr/local/bin/kafkacat -b kafka:9092 -K='
alias produce='kafka-console-producer.sh --bootstrap-server kafka:9092 --topic'
alias topics='kafka-topics.sh --bootstrap-server kafka:9092'

# Avoid Jolokia messages when using Kafka CLI utilities
unset KAFKA_OPTS
