#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/dolek/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install btop fzf

sudo apt-get install clang-format clang-tidy cppcheck doxygen g++ gawk git graphviz lcov libpqxx-dev libprotobuf-dev make pkg-config protobuf-compiler tree valgrind vim wget
