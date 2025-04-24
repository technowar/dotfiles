#!/usr/bin/env bash

function homebrew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function tgpt() {
  curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | /bin/bash -s /usr/local/bin
}

function tpm() {
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
}

function z() {
  git clone https://github.com/rupa/z/ ~/.bin/z
}

function setup() {
  if [ ! -x "$(command -v git)" ]; then
    echo Error: git is not installed
    exit 1
  fi

  # Install Homebrew
  if [ ! -x "$(command -v brew)" ]; then
    echo ' ------------- installing Homebrew'
    homebrew
    echo ' ------------- Homebrew installed'
  else
    echo ' ------------- Homebrew is already installed'
  fi

  # Install tgpt
  if [ ! -x "$(command -v tgpt)" ]; then
    echo ' ------------- installing tgpt'
    tgpt
    echo ' ------------- tgpt installed'
  else
    echo ' ------------- tgpt is already installed'
  fi

  # Install tpm
  if [ ! -d ~/.config/tmux/plugins/tpm ]; then
    echo ' ------------- installing tpm'
    tpm
    echo ' ------------- tpm installed'
  else
    echo ' ------------- tpm is already installed'
  fi

  # Install z
  if [ ! -d ~/.bin/z ]; then
    echo ' ------------- installing z'
    z
    echo ' ------------- z installed'
  else
    echo ' ------------- z is already installed'
  fi
}

setup

unset homebrew
unset tgpt
unset tpm
unset z
unset setup
