ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zprofile ~/.zprofile

if [ -e ~/dotfiles/.vim/bundle ]; then
  echo .vim exist
else
  mkdir -p ~/dotfiles/.vim/bundle
fi

ln -s ~/dotfiles/.vim ~/

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/dotfiles/oh-my-zsh
git clone https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme.git ~/dotfiles/oh-my-zsh-powerline-theme
git clone https://github.com/Shougo/neobundle.vim.git ~/dotfiles/.vim/bundle/neobundle.vim

# set up oh-my-zsh
~/dotfiles/oh-my-zsh/tools/install.sh | ZSH=~/dotfiles/oh-my-zsh sh
# create hardlink to oh-my-zsh-powerline-theme from oh-my-zsh/themes
ln -f ~/dotfiles/oh-my-zsh-powerline-theme/powerline.zsh-theme ~/dotfiles/oh-my-zsh/themes/powerline.zsh-theme
