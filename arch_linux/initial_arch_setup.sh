## needed for texlive install if not already in .bashrc
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8

## update keyring to start
sudo pacman -Syyuu --noconfirm --needed base-devel archlinux-keyring
sudo pacman -Syyuu --noconfirm

sudo pacman -S --noconfirm git
mkdir -p git/aur
cd git/aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

AUR_HELPER=yay # set your aur helper (e.g., yay, paru, pacaur, etc)

## if sudo password is not being recognized after log in
# systemctl status systemd-homed ## if this is anything other than active run:
# systemctl start systemd-homed

$AUR_HELPER -Syu --noconfirm

## reflector to find fastest mirror
#$AUR_HELPER -Syu reflector
## fast mirrors
#reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist

$AUR_HELPER -Syu --noconfirm arch-install-scripts gcc-fortran gcc clang git svn base-devel \
    emacs code code-marketplace code-features \
    openblas intel-mkl \
    r tk rstudio-desktop-daily-bin quarto-cli-bin \
    pandoc-bin \
    git-cola gitkraken \
    obsidian \
    firefox-developer-edition chromium google-chrome \
    synology-drive \
    authy \
    synergy \
    atkinson-hyperlegible-fonts ttf-fira-code \
    freeoffice \
    ark \
    peek \
    solaar \
    yakuake

# power management
#yay -Syu --noconfirm tlp tp_smapi acpi_call
#sudo systemctl start tlp.service
#sudo systemctl enable tlp.service
# https://www.reddit.com/r/archlinux/comments/rujhv0/best_power_management_solution/
sudo pacman -Syu powertop
# power
# tlp: https://support.system76.com/articles/battery/
    
$AUR_HELPER -Syu --noconfirm emacs-ess
sudo pacman -Syu --noconfirm texlive-most texlive-lang texlive-langextra texlive-bibtexextra texlive-fontsextra biber
$AUR_HELPER -Syu --noconfirm texstudio zotero
$AUR_HELPER -Syu --noconfirm obs-studio kdenlive ffmpeg imagemagick vlc

## Docker
sudo pacman -Syu --noconfirm docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo docker info
## Download lastest arch linux image and run hello world
sudo docker run -it --rm archlinux:base-devel bash -c "echo hello world"

# python
yay -Syu --no-confirm pyenv

# bluetooth
# https://wiki.archlinux.org/title/bluetooth#Installation
$AUR_HELPER -Syu --noconfirm bluez bluez-utils bluedevil
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

# messaging
yay -Syu --noconfirm slack-desktop ferdium-bin teams discord

# file sync
yay -Syu --noconfirm synology-drive nextcloud

# hp printer stuff
# https://unix.stackexchange.com/questions/359531/installing-hp-printer-driver-for-arch-linux/392629
