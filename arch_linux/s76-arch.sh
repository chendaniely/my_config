yay -Syu --noconfirm \
	system76-firmware-daemon \
	system76-firmware 
	firmware-manager \
	system76-power \
	gnome-shell-extension-system76-power-git \
	system76-driver \
	system76-dkms \
	system76-acpi-dkms

sudo systemctl enable --now system76-firmware-daemon
sudo systemctl enable --now com.system76.PowerDaemon.service
sudo gpasswd -a $USER adm
