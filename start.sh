#!/usr/bin/env bash

function tpm() {
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

function z() {
	git clone https://github.com/rupa/z/ ~/.bin/z
}

function setup() {
	if [ ! -x $(which git) ]; then
		echo Error: git not installed
		exit 1
	fi

	# Install Tmux Plugin Manager
	if [ ! -d ~/.tmux/plugins/tpm ]; then
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

unset tpm
unset z
unset setup
