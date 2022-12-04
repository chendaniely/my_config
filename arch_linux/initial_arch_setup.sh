## needed for texlive install if not already in .bashrc
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8

sudo pacman -Sy --noconfirm reflector
sudo reflector -c CA -c US -p https --sort rate -l 50 > /etc/pacman.d/mirrorlist
sudo pacman -Syyuu --noconfirm

## update keyring to start
sudo pacman -S --noconfirm --needed base-devel archlinux-keyring

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
    yakuake \
    toggldesktop-bin \
    nordvpn-bin

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
yay -Syu --no-confirm pyenv python-pipenv
pyenv init
#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

pyenv install --list | grep 3.10
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.10.6
pyenv install --list | grep miniforge
pyenv install miniforge3-4.10.3-10

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

yay -Syu --noconfirm \
    virtualbox \
    virtualbox-host-modules-arch \
    virtualbox-guest-iso \
    virtualbox-ext-oracle
sudo /sbin/vboxreload

yay -Syu --noconfirm \
    packagekit-qt5 \
    qbittorrent \
    thunderbird-nightly-bin
# MOZ_ENABLE_WAYLAND=1 thunderbird-nightly

yay -Syu --noconfirm \
    docker-compose
sudo usermod -aG docker $USER
sudo systemctl restart docker.service

# zoom + wayland
yay -Syu --noconfirm \
    zoom \
    xdg-desktop-portal \
    xdg-desktop-portal-kde
# https://aur.archlinux.org/packages/zoom#comment-870919
# QT_QPA_PLATFORM=xcb XDG_SESSION_TYPE=x11 nohup zoom %U

yay -Syu --noconfirm \
    synergy \
    barrier

# enable parallel downloads in pacman
# sudo nano /etc/pacman.conf
# set ParallelDownloads = 5

# touch gestures

yay -S yubikey-manager
systemctl status pcscd.service
systemctl start pcscd.service
systemctl enable pcscd.service
