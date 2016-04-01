#!/usr/bin/env bash

# Run this script once after cloning the repo in order to setup the environment for your operating system
read -p "Enter your operating system (mac/windows/linux): " os
echo "Setting up $os config..."
echo

# Clone config repo for specific operating system
echo "cloning $os-config repository to ~/$os-config"...
git clone https://github.com/quantum-media-tech/$os-config.git ~/$os-config

# Download Git completion script
curl -LSso ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# Add sourcing for common-config
echo "source ~/common-config/bash_profile" >> ~/.bash_profile
echo "source ~/common-config/vimrc" >> ~/.vimrc

# Add sourcing for (os)-config
echo "source ~/$os-config/bash_profile" >> ~/.bash_profile
echo "source ~/$os-config/vimrc" >> ~/.vimrc

# Make folder for loading additional libraries
mkdir ~/common-config/libs

# Clone and source bash-git-prompt (https://github.com/magicmonty/bash-git-prompt)
git clone https://github.com/magicmonty/bash-git-prompt.git ~/common-config/libs/bash-git-prompt
echo "source ~/common-config/libs/bash-git-prompt/gitprompt.sh" >> ~/.bash_profile

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install Vim Markdown Highlighting
cd ~/.vim/bundle
git clone https://github.com/plasticboy/vim-markdown.git

# Add sourcing of gitconfig file
echo "[include]" >> ~/.gitconfig
echo "    path = ~/common-config/gitconfig" >> ~/.gitconfig

# Source bash profiles to load new configuration
source ~/.bash_profile

echo "-------------------------------------------------------"
echo "Restart your terminal for configuration to take effect."
echo "-------------------------------------------------------"
