set -x

rm $HOME/.Xdefaults
rm $HOME/.Xresources
rm $HOME/.Xresources.dark

ln --symbolic $PWD/.Xdefaults      $HOME/
ln --symbolic $PWD/.Xresources      $HOME/
ln --symbolic $PWD/.Xresources.dark $HOME/
