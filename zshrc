eval "$(pyenv init -)"

alias apy="source .venv/bin/activate"
pya() {
  echo "Activating pyenv: ~/.venvs/$1"
  source ~/.venvs/$1/bin/activate
}

export PATH="$HOME/.poetry/bin:$PATH"
