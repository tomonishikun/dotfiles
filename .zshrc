export DOCKER_HOST=unix://$HOME/.lima/docker_rosetta/sock/docker.sock
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(rbenv init - zsh)"
limactl start docker_rosetta
