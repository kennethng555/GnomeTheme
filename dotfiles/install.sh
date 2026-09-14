sudo apt install \
	gnome-terminal \
	gnome-shell \
	gnome-session \
	gnome-tweaks \
	gnome-shell-extension-manager \
	gdm3 \
	papirus-icon-theme \
	libgnome-menu-3-0 \
	gir1.2-gmenu-3.0
	sassc \
	gnome-themes-extra \
	gtk2-engines-murrine
sudo systemctl enable gdm3
sudo systemctl set-default graphical.target
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize, maximize,close'
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
./install.sh -t pink -c dark --tweaks normal -l
