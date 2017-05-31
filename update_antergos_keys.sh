sudo pacman -Scc  <-- reply with explicit y to the first question
sudo pacman -Syy
sudo pacman -S haveged
sudo haveged -w 1024
sudo pacman-key --init
sudo pacman-key --populate archlinux antergos
sudo pkill haveged
sudo pacman -S archlinux-keyring antergos-keyring
sudo pacman -Syu
