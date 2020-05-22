set -x

rm $HOME/.Xdefaults
rm $HOME/.Xresources
rm $HOME/.Xresources.dark

ln --symbolic $PWD/Xdefaults      $HOME/.Xdefaults
ln --symbolic $PWD/Xresources      $HOME/.Xresources
ln --symbolic $PWD/Xresources.dark $HOME/.Xresources.dark
