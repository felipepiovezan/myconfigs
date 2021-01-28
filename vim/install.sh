set -x

rm $HOME/.vimrc
rm -r $HOME/.vim/syntax
rm -r $HOME/.vim/pack
rm -r $HOME/.vim/colors

ln --symbolic $PWD/vimrc $HOME/.vimrc
ln --symbolic $PWD/ftdetect $HOME/.vimrc
ln --symbolic $PWD/syntax/ $HOME/.vim/
ln --symbolic $PWD/pack/ $HOME/.vim/
ln --symbolic $PWD/colors/ $HOME/.vim/
