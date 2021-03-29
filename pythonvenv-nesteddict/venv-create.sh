#!/usr/bin/env bash

#set -euo pipefail

venv_create() {
  echo "Creating python virtual environment on ${1}"
  python3.9 -m venv "$1"
#  pip install -q -r "$2"
  #pip install --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org -q -r "$2"

}

venv_create "py-venv"
echo `pwd`
source "`pwd`/venv-activate.sh"
