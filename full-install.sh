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
# Create virtual environment
# -----------------------------
echo "create virtual environment"
rm -rf .venv
python3 -m venv .venv
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
