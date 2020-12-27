set -x

rm ~/.gitconfig ~/.gitconfig.pc.specific

ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/gitconfig.pc.specific ~/.gitconfig.pc.specific
