set -x

rm ~/.gitconfig ~/.gitconfig.pc.specific

ln --symbolic $PWD/gitconfig ~/.gitconfig
ln --symbolic $PWD/gitconfig.pc.specific ~/.gitconfig.pc.specific
