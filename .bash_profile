# .bash_profile

# User specific environment and startup programs

PATH=$HOME/.local/bin:$HOME/infra/bin:$PATH

export PATH
export APCA_URL=https://paper-api.alpaca.markets
export GPG_TTY=$(tty)

# update system
sudo yum update --assumeyes

# docker login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 679746198372.dkr.ecr.us-east-1.amazonaws.com

# start blue
exec docker run --interactive --rm --tty \
  --env AWS_CODECOMMIT_URL=https://git-codecommit.us-east-1.amazonaws.com/v1/repos \
  --env AWS_REGION=us-east-1 \
  --env FH_API_KEY=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id FinnhubApiKey) \
  --env INFLUX_HOST=http://influxdb:8086 \
  --env INFLUX_ORG=blbr.ai \
  --env INFLUX_TOKEN=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id InfluxToken) \
  --pull always \
  --network blbr_private \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume $PWD:/root \
  679746198372.dkr.ecr.us-east-1.amazonaws.com/blbr:latest
