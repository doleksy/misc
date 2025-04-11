#!/usr/bin/env bash

set -e

run() {
  printf "\n>> $1 \n\n"
  $1
}
runIfExists() {
  if [ -x "$(command -v $1)" ]; then
    run "$2"
  fi
}

# If sudo will prompt for password, do it once now
sudo true

# Distro: Arch-based
runIfExists "pacman" "sudo pacman -Syu"

# Distro: Debian-based
if [[ $OSTYPE != 'darwin'* ]]; then # `apt` on macOS is some Java tool
  runIfExists "apt" "sudo apt update"
  runIfExists "apt" "sudo apt full-upgrade -y"
fi
runIfExists "apt-get" "sudo apt-get clean -y"
runIfExists "apt-get" "sudo apt-get autoclean -y"
runIfExists "apt-get" "sudo apt-get autoremove -y --purge"

runIfExists "snap" "sudo snap refresh"

runIfExists "brew" "brew update"
runIfExists "brew" "brew upgrade"

# nvm is a bash function, not a builtin, file or alias
if [ -d .nvm ] && [ -s .nvm/nvm.sh ]; then
  NVM_DIR="$HOME/.nvm"
  source .nvm/nvm.sh
  run "nvm install lts/*"
  run "nvm alias default lts/*"
  run "nvm use default"
fi

runIfExists "npm" "npm install -g npm"
runIfExists "npm" "npm update -g"

runIfExists "raco" "raco pkg update --all"

runIfExists "rustup" "rustup update"

