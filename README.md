# ~/.*

Updated and decluttered dotfiles with some additional setup scripts.

&nbsp;

## Prereq


- **`vim/neovim`** - Install either of the two.

- **`plugins.txt`** - Edit this file and add whatever vim plugins you want installed.


&nbsp;

## Setup

> **[ Reminder ]** 
> 
> Before doing the steps below, make sure to edit the **`.extra`** file first.


1. Run **`./setup.sh`** from your terminal window. This command could take a while. So get yourself a cup of coffee or a byte to eat.

	This will check for dependencies and install them if possible. And the following
	tools and lib will also be installed: [`z.sh`](https://github.com/rupa/z/), [`janus`](https://github.com/carlhuda/janus)
	
	
2. Next is **`./start.sh`**.

	This will sync dotfiles to your home directory