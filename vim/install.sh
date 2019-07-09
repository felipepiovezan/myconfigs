set -x

rm $HOME/.vimrc
rm -r $HOME/.vim/syntax
rm -r $HOME/.vim/pack

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/syntax/ $HOME/.vim/
ln -s $PWD/pack/ $HOME/.vim/
