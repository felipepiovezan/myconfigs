set -x

rm ~/.gitconfig ~/.gitconfig.pc.specific

ln --symbolic gitconfig ~/.gitconfig
ln --symbolic gitconfig.pc.specific ~/.gitconfig.pc.specific
