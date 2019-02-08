set -x

rm -f ~/.gdbinit
rm -f ~/.prettyprinters.py

ln --symbolic $PWD/gdbinit ~/.gdbinit
ln --symbolic $PWD/prettyprinters.py ~/.prettyprinters.py

