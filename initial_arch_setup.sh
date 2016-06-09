sudo mount -o remount,size=16G,noatime /tmp

yaourt -Syyua pacaur reflector

reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist

# might need to run `gpg --recv-keys <key>`
# `gpg --recv-keys 1EB2638FF56C0C53`

pacaur -Syyu emacs r gcc-fortran rstudio-desktop-preview-bin emacs-ess openblas intel-mkl r-mkl intel-advisor-xe \
    git git-cola gitkraken \
    base-devel xf86-input-synaptics \
    lxc arch-install-scripts \
    synology-cloud-station-drive \
    firefox chromium google-chrome-beta vivaldi \
    htop \
    pkgbuild-introspection
