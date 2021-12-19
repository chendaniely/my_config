AUR_HELPER=yay # set your aur helper (e.g., yay, paru, pacaur, etc)

## if sudo password is not being recognized after log in
# systemctl status systemd-homed ## if this is anything other than active run:
# systemctl start systemd-homed

## update keyring to start
sudo pacman -S archlinux-keyring
sudo pacman -Syu --noconfirm
$AUR_HELPER -Syu --noconrirm

## reflector to find fastest mirror
#$AUR_HELPER -Syu reflector
## fast mirrors
#reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist

$AUR_HELPER -Syu --noconfirm arch-install-scripts gcc-fortran gcc clang git svn base-devel \
    emacs code \
    openblas intel-mkl \
    r tk rstudio-desktop-daily-bin \
    pandoc-bin \
    git-cola gitkraken \
    obsidian \
    firefox chromium google-chrome-beta \
    synology-drive
    
$AUR_HELPER -Syu emacs-ess
sudo pacman -Syu texlive-most texlive-lang texlive-langextra texlive-bibextra texlive-fontsextra biber
$AUR_HELPER -Syu obs-studio kdenlive ffmpeg imagemagick vlc

## Docker
sudo pacman -Syu docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
docker info
## Download lastest arch linux image and run hello world
docker run -it --rm archlinux:base-devel bash -c "echo hello world"
