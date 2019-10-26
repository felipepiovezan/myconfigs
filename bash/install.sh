set -x

if [ "$#" -ne 1 ]; then
  echo "usage: ./command <path_to_bashrc_to_replace>"
  exit 1
fi

rm ~/.bash_profile ~/.bashrc_pc_specific "$1"

ln --symbolic bash_profile ~/.bash_profile
ln --symbolic bashrc_pc_specific ~/.bashrc_pc_specific
ln --symbolic bashrc "$1"
