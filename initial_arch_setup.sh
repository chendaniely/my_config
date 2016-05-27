sudo mount -o remount,size=16G,noatime /tmp

yaourt -Syyua pacaur

pacaur -Syyua emacs r gcc-fortran rstudio-desktop-preview-bin emacs-ess openblas intel-mkl r-mkl intel-advisor-xe \
    git \
    base-devel xf86-input-synaptics \
    lxc arch-install-scripts \
    synology-cloud-station-drive \
    firefox chromium google-chrome-beta vivaldi
