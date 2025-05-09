#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/dolek/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install btop fzf

sudo apt-get install clang-format clang-tidy cppcheck doxygen g++ gawk git graphviz lcov libpqxx-dev libprotobuf-dev make pkg-config protobuf-compiler tree valgrind vim wget

wget -O - https://apt.corretto.aws/corretto.key | sudo gpg --dearmor -o /usr/share/keyrings/corretto-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/corretto-keyring.gpg] https://apt.corretto.aws stable main" | sudo tee /etc/apt/sources.list.d/corretto.list
sudo apt-get update; sudo apt-get install -y java-21-amazon-corretto-jdk

