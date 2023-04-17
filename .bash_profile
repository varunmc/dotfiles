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

# Start Blue.
## https://askubuntu.com/questions/1438706/starting-container-process-caused-error-loading-seccomp-filter-into-kernel-loa
exec docker run --interactive --rm --tty \
  --env AWS_CODECOMMIT_URL=https://git-codecommit.us-east-1.amazonaws.com/v1/repos \
  --env AWS_REGION=us-east-1 \
  --env FINNHUB_TOKEN=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id FinnhubApiKey) \
  --env GRAFANA_PASSWORD=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id GrafanaPassword) \
  --env INFLUX_TOKEN=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id InfluxToken) \
  --env INFLUX_PASSWORD=$(aws secretsmanager get-secret-value --output text --query SecretString --secret-id InfluxPassword) \
  --pull always \
  --network blbr_private \
  --security-opt seccomp=unconfined \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume $PWD:/root \
  679746198372.dkr.ecr.us-east-1.amazonaws.com/blbr:latest
