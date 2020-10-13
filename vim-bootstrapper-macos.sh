#!/bin/bash

cd ~
mkdir -p .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~
mkdir -p .vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

vim +PluginInstall +qall

# tmux
brew install tmux

# ZSH
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo '[[ $TERM != "screen" ]] && exec tmux' >> ~/.zshrc

