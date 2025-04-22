#!/usr/bin/env bash

function homebrew() {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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

	if [ ! -x "$(command -v brew)" ]; then
		echo ' ------------- installing Homebrew'
		homebrew
		echo ' ------------- Homebrew installed'
	else
		echo ' ------------- Homebrew is already installed'
	fi

	# Install Tmux Plugin Manager
	if [ ! -d ~/.config/tmux/plugins/tpm ]; then
		echo ' ------------- installing Tmux Plugin Manager'
		tpm
		echo ' ------------- Tmux Plugin Manager installed'
	else
		echo ' ------------- Tmux Plugin Manager is already installed'
	fi

	# Install Z
	if [ ! -d ~/.bin/z ]; then
		echo ' ------------- installing Z'
		z
		echo ' ------------- Z installed'
	else
		echo ' ------------- Z is already installed'
	fi
}

setup

unset homebrew
unset tpm
unset z
unset setup
