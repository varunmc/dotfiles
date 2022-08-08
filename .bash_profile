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
export GPG_TTY=$(tty)

# docker login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 679746198372.dkr.ecr.us-east-1.amazonaws.com

# start blbr
docker run --interactive --rm --tty \
	--env FH_API_KEY=$FH_API_KEY \
	--env KSQL_OPTS=-XX:+IgnoreUnrecognizedVMOptions \
	--name $(basename $PWD) \
	--network blbr_public \
	--volume /var/run/docker.sock:/var/run/docker.sock \
	--volume $PWD:/root \
	679746198372.dkr.ecr.us-east-1.amazonaws.com/blbr:latest
