set -x

rm $HOME/.vimrc
rm -r $HOME/.vim/syntax
rm -r $HOME/.vim/pack

ln --symbolic $PWD/vimrc $HOME/.vimrc
ln --symbolic $PWD/syntax/ $HOME/.vim/
ln --symbolic $PWD/pack/ $HOME/.vim/
