export DOCKER_HOST=unix://$HOME/.lima/docker_rosetta/sock/docker.sock
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(rbenv init - zsh)"
limactl start docker_rosetta

# Disable Pipenv's automatic virtualenv activation
export PIPENV_DONT_LOAD=1

# Reset prompt
PS1="%n@%m %~ %# "
export SSL_CERT_FILE=~/cacert.pem
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(rbenv init - zsh)"
export RUBY_OPENSSL_VERIFY_MODE=none
export AWS_CA_BUNDLE=""
export SSL_CERT_FILE="$(brew --prefix)/etc/ca-certificates/cert.pem"
export SSL_CERT_DIR="$(brew --prefix)/etc/ca-certificates"
export AWS_CA_BUNDLE="$SSL_CERT_FILE"
eval "$(starship init zsh)"
