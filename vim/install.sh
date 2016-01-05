#!/usr/bin/env bash
mkdir -p ~/.vim/colors ~/.vim/bundle
curl https://raw.githubusercontent.com/Yayg/conf/master/vim/colors/railscasts.vim > ~/.vim/colors/railscasts.vim
curl https://raw.githubusercontent.com/Yayg/conf/master/vim/ycm_extra_conf.py > ~/.ycm_extra_conf.py
curl https://raw.githubusercontent.com/Yayg/conf/master/vim/vimrc > ~/.vim/vimrc
curl https://raw.githubusercontent.com/Yayg/conf/master/vim/buffer.vim > ~/.vim/buffer.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
. ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
