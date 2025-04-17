#!/usr/bin/env bash

function z() {
	mkdir -p ~/.bin
	git clone https://github.com/rupa/z/ ~/.bin/z
}

function setup() {
	if [ ! -x $(which git) ]; then
		echo Error: git not installed
		exit 1
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

unset z
unset setup
