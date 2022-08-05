# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

export APCA_API_KEY_ID=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id AlpacaApiId)
export APCA_API_SECRET_KEY=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id AlpacaApiSecretKey)
export APCA_URL=https://paper-api.alpaca.markets
export AWS_REGION=us-east-1
export AWS_CODECOMMIT_URL=https://git-codecommit.us-east-1.amazonaws.com/v1/repos
export FH_API_KEY=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id FinnhubApiKey)
export FH_API_TPM=60
export FH_DATA_LAKE=$HOME/data
export GPG_TTY=$(tty)
export GRADLE_HOME=/opt/gradle
export JAVA_HOME=/opt/java
export BROKER_URL=localhost:9092
export PATH=~/screener/bin:/opt/confluent/bin:/opt/kafka/bin:/opt/gradle/bin:$JAVA_HOME/bin:$PATH

# Start Blue Brain
~/infra/bin/blbr
