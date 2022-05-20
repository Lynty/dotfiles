#!/bin/zsh

#==============
# Variables
#==============
dotfiles_dir=~/dotfiles

#==============
# Delete existing dot files and folders
#==============
rm -rf ~/.vim > /dev/null 2>&1
rm -rf ~/.vimrc > /dev/null 2>&1
rm -rf ~/.bashrc > /dev/null 2>&1
rm -rf ~/.tmux > /dev/null 2>&1
rm -rf ~/.tmux.conf > /dev/null 2>&1
rm -rf ~/.zshrc > /dev/null 2>&1
rm -rf $dotfiles_dir/oh-my-zsh/custom
rm -rf $dotfiles_dir/oh-my-zsh/themes/gianu.zsh-theme
rm -rf ~/.gitconfig > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
ln -sf $dotfiles_dir/vim ~/.vim
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/tmux ~/.tmux
ln -sf $dotfiles_dir/zshrc ~/.zshrc
ln -sf $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -sf $dotfiles_dir/oh-my-zsh ~/.oh-my-zsh
ln -sf $dotfiles_dir/zsh_favlist ~/.zsh_favlist
ln -sf $dotfiles_dir/makefile ~/makefile
ln -sf $dotfiles_dir/old-oh-my-zsh/custom/ $dotfiles_dir/oh-my-zsh/custom
ln -sf $dotfiles_dir/old-oh-my-zsh/themes/gianu.zsh-theme $dotfiles_dir/oh-my-zsh/themes/gianu.zsh-theme

#==============
# Set zsh as the default shell
#==============
chsh -s /bin/zsh
