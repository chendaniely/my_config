sudo mount -o remount,size=16G,noatime /tmp

# might need to run `gpg --recv-keys <key>`
# this gpg key is for pacaur
gpg --recv-keys 1EB2638FF56C0C53

yaourt -Syyua pacaur reflector

# fast mirrors
reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Syyu emacs r gcc-fortran gcc clang texlive-most git base-devel

# intel-advisor-xe \
# lxc \
# anaconda \
# telegram-desktop-bin thunderbird thunderbird-lightning-bin slack-desktop \
# obs-studio kdenlive ffmpeg imagemagick dvdauthor vlc \
pacaur -Syyu openblas intel-mkl r-mkl  \
    emacs-ess \
    git-cola gitkraken \
    arch-install-scripts \
    synology-cloud-station-drive \
    firefox chromium google-chrome-beta vivaldi \
    htop guake \
    pkgbuild-introspection \
    ntfs-3g \
    texlive-most \
    lm_sensors \
    unixodbc \
    libselinux \
    aspell-en

# r-mkl
yaourt -Syyua rstudio-desktop-preview-bin intel-mkl microsoft-r-open
