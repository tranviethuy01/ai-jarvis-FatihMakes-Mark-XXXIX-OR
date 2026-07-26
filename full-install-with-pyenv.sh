#!/usr/bin/env bash
set -e

echo "======================================="
echo " AI Jarvis Linux Installer"
echo "======================================="


echo "Check python3"

python3 --version
which python3

echo "check pip"
python3 -m pip --version
pip3 --version

echo "install pip"
sudo apt update
sudo apt install python3-pip

# -----------------------------
# Install system packages
# -----------------------------
#
#
echo "install full python development packages"

sudo apt install \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    build-essential

echo "install some requirements packages"
sudo apt update


sudo apt install zlib1g-dev


sudo apt install -y \
  build-essential \
  curl \
  git \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  libffi-dev \
  libncursesw5-dev \
  xz-utils \
  tk-dev \
  libxml2-dev \
  libxmlsec1-dev \
  liblzma-dev \
  uuid-dev

#audio 
sudo apt install -y \
    portaudio19-dev \
    libasound2-dev \
    libjack-jackd2-dev \
    libportaudiocpp0


# -----------------------------
# Install pyenv
# -----------------------------
#
echo "install whole python3.11.13 with pyenv, not use system Python"
#curl https://pyenv.run | bash
if [ ! -d "$HOME/.pyenv" ]; then
    echo "Installing pyenv..."
    curl https://pyenv.run | bash
fi

# -----------------------------
# Configure pyenv
# -----------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

echo "install 3.11.13 and set this folder to use 3.11.13"
#pyenv install 3.11.13
if ! pyenv versions --bare | grep -q "^3.11.13$"; then
    pyenv install 3.11.13
fi

pyenv local 3.11.13

echo "Check Python:"
which python
python --version


# -----------------------------
# Create virtual environment
# -----------------------------
rm -rf .venv
python -m venv .venv
source .venv/bin/activate

#python -m pip install --upgrade pip setuptools wheel


#echo "Install requirements manually:"
#pip install -r requirements.txt
#
#echo "Then install Playwright:"
#
#python -m playwright install
# install playwright deps
# python -m playwright install-deps
#run 
# python main.py
