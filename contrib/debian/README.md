
Debian
====================
This directory contains files used to package aurumcoinhunterd/aurumcoinhunter-qt
for Debian-based Linux systems. If you compile aurumcoinhunterd/aurumcoinhunter-qt yourself, there are some useful files here.

## aurumcoinhunter: URI support ##


aurumcoinhunter-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install aurumcoinhunter-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your aurumcoinhunter-qt binary to `/usr/bin`
and the `../../share/pixmaps/aurumcoinhunter128.png` to `/usr/share/pixmaps`

aurumcoinhunter-qt.protocol (KDE)

