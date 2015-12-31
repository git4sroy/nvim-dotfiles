#!/bin/bash
ESCAPE="\033";

echo "${ESCAPE}[32mWelcome to NeoViM dotfiles setup${ESCAPE}[0m\n"
echo "${ESCAPE}[32mThis dotfile repo usages ${ESCAPE}[33mvim-plug${ESCAPE}[0m ${ESCAPE}[32mas plugin manager for nvim, getting that from github${ESCAPE}[0m"
curl -sfLo ${HOME}/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "${ESCAPE}[32mDownloading the required nvim settings and plugin listi ${ESCAPE}[0m\n"
git clone https://github.com/git4sroy/nvim-dotfiles ${HOME}/.config/nvim/nvim-dotfiles
cp -r ${HOME}/.config/nvim/nvim-dotfiles/* ${HOME}/.config/nvim/
rm -rf ${HOME}/.config/nvim/nvim-dotfiles
echo "${ESCAPE}[32mLets create the symlink for ${ESCAPE}[32m.nvimrc${ESCAPE}[0m"
ln -s ${HOME}/.config/nvim/init.vim ${HOME}/.nvimrc
echo "${ESCAPE}[32mBoom plugins are on there way...${ESCAPE}[0m\n"
# if [[ -f /usr/local/bin/nvim ]]
# then
#   nvim +PlugInstall +qall
# else
#   echo "${ESCAPE}[31m Please install nvim: brew install neovim/neovim/neovim${ESCAPE}[0m"
# fi
