set -x

rm $HOME/.vimrc
rm -r $HOME/.vim/syntax
rm -r $HOME/.vim/pack
rm -r $HOME/.vim/colors
rm -r $HOME/.vim/ftdetect
rm -r $HOME/.vim/ftplugin
rm -r $HOME/.vim/indent

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/syntax/ $HOME/.vim/
ln -s $PWD/pack/ $HOME/.vim/
ln -s $PWD/colors/ $HOME/.vim/
ln -s $PWD/ftdetect $HOME/.vim/
ln -s $PWD/ftplugin $HOME/.vim/
ln -s $PWD/indent $HOME/.vim/
