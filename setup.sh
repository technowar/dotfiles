#!/usr/bin/env bash

# check vim, git, ruby and rake first
if [[ ! -x $(which git) ]]; then
	echo Error: git currently not installed
	exit 1
fi
if [[ ! -x $(which ruby) ]]; then
	echo Error: ruby not installed
	exit 1
fi
if [[ ! -x $(which rake) ]]; then
	echo Error: rake not installed
	exit 1
fi
if [[ ! -x $(which nvim) ]] || [[ ! -x $(which vim) ]]; then
	echo Error: rake not installed
	exit 1
fi

# install z.sh
echo '  -> Installing z.sh'
mkdir -p ~/.bin
git clone https://github.com/rupa/z/ ~/.bin/z
echo '  -> z installed!'

# install janus
echo '  -> Installing janus'
curl -L https://bit.ly/janus-bootstrap | bash
echo '  -> Creating link for neovim'
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
echo '  -> janus installed'

# save dotfiles dir
dotfiles_folder=$(pwd)
# create ~/.janus folder and install plugins
echo '  -> Installing vim plugins from plugins.txt'
mkdir -p ~/.janus
cd ~/.janus
for repo in `cat "$dotfiles_folder"/plugins.txt`
do
	git clone $repo
done
echo '  -> plugins installed'
cd $dotfiles_folder
