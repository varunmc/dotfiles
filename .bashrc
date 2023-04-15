# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias _='env | sort | less'
alias 'consume-avro'='kafka-avro-console-consumer --bootstrap-server kafka:9092 --property schema.registry.url=http://registry:8081 --topic'
alias configs='kafka-configs.sh --bootstrap-server kafka:9092'
alias consume='kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic'
alias consumers='kafka-consumer-groups.sh --bootstrap-server kafka:9092'
alias dc=docker-compose
alias dcl='docker-compose logs --no-log-prefix'
alias dot='git --git-dir $HOME/.dotfiles --work-tree $HOME'
alias jmxterm='java -jar /opt/jmxterm-1.0.3-uber.jar'
alias kcat="kcat -b kafka:9092 -f '\nKey:%k Timestamp:%T Partition:%p Offset:%o Headers:%h\n  %s\n'"
alias produce='kafka-console-producer.sh --bootstrap-server kafka:9092 --topic'
alias topics='kafka-topics.sh --bootstrap-server kafka:9092'

# Enable completion for influxdb
source <(influx completion bash)
