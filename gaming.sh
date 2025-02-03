#!/bin/sh

echo "--- Performing System Updates ---"

sudo pacman -Syyuu --noconfirm

echo "--- Installing Software ---"

if lspci | grep -i "nvidia" > /dev/null; then
    sudo pacman -S --needed --noconfirm lib32-nvidia-utils
fi

pkgs=(
  "steam"
  "wine"
  "winetricks"
  "lutris"
  "lib32-libxcomposite"
  "cabextract"
  "wine-mono"
)

for pkg in ${pkgs[@]}; do
  echo "-- Installing: $pkg"
  sudo pacman -S --needed --noconfirm ${pkg}
done

echo "--- Installing AUR Software ---"

aurpkgs=(
  "protonup-qt"
)

for pkg in ${aurpkgs[@]}; do
  echo "-- Installing: $pkg"
  yay -S --needed --noconfirm ${pkg}
done

echo "--- Cleaning Up ---"

yay -Scc --noconfirm
yay -Yc --noconfirm

sudo mkinitcpio -P

echo "--- Rebooting ---"

echo "-- Installation Finished"
echo "-- Press enter to continue --"
read

reboot
