# create symlinks
ln -sf $HOME/.bkendzior/.bashrc $HOME/.bashrc
ln -sf $HOME/.bkendzior/.gitconfig $HOME/.gitconfig
ln -sf $HOME/.bkendzior/.vimrc $HOME/.vimrc
ln -sf $HOME/.bkendzior/.tmux.conf $HOME/.tmux.conf

# Mac Bashrc Fix
if [[ `sw_vers` == *Mac* ]]; then
  echo ". $HOME/.bashrc" >> $HOME/.profile
fi
