sudo mount -o remount,size=16G,noatime /tmp

# might need to run `gpg --recv-keys <key>`
# this gpg key is for pacaur
gpg --recv-keys 1EB2638FF56C0C53

yaourt -Syyua pacaur reflector

# fast mirrors
reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist

# intel-advisor-xe \
pacaur -Syyu emacs r gcc-fortran rstudio-desktop-preview-bin emacs-ess openblas intel-mkl r-mkl \
    git git-cola gitkraken \
    base-devel xf86-input-synaptics \
    lxc arch-install-scripts \
    synology-cloud-station-drive \
    firefox chromium google-chrome-beta vivaldi \
    htop guake \
    pkgbuild-introspection \
    ntfs-3g \
    anaconda \
    texlive-most \
    telegram-desktop-bin thunderbird
