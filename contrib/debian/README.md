
Debian
====================
This directory contains files used to package fusiond/fusion-qt
for Debian-based Linux systems. If you compile fusiond/fusion-qt yourself, there are some useful files here.

## fusion: URI support ##


fusion-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install fusion-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your fusion-qt binary to `/usr/bin`
and the `../../share/pixmaps/fusion128.png` to `/usr/share/pixmaps`

fusion-qt.protocol (KDE)

