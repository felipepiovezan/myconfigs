set -x

rm $HOME/.vimrc
rm -r $HOME/.vim/syntax
rm -r $HOME/.vim/pack

cp -r $PWD/vimrc $HOME/.vimrc
cp -r $PWD/syntax/ $HOME/.vim/
cp -r $PWD/pack/ $HOME/.vim/
