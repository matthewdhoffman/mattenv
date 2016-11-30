#!/bin/zsh

cp configs/.zshrc ~/.zshrc
cp configs/mattenv.zsh-theme ~/.oh-my-zsh/themes/
cp configs/.emacs ~
cp -r configs/.el ~
cp configs/.theanorc ~
cp -r configs/.ipython ~

source ~/.zshrc
