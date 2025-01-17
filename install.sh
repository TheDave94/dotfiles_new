#!/bin/sh

echo "--- Updating System ---"

sudo pacman -Syuu --noconfirm

sudo pacman -Rncs --noconfirm kate vim

echo "--- Installing AUR-Helper ---"

sudo pacman -S --needed --noconfirm base-devel

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd ../ && rm -rf yay

echo "--- Installing Software ---"

pkgs=(
  "git"
  "bluez"
  "bluez-utils"
  "cups"
  "cups-pdf"
  "zsh"
  "which"
  "github-cli"
  "fzf"
  "ufw"
  "zoxide"
  "exa"
  "unrar"
  "unzip"
  "zip"
  "p7zip"
  "libheif"
  "ntfs-3g"
  "fastfetch"
  "zlib"
  "zenity"
  "zxing-cpp"
  "xvidcore"
  "wget"
  "whois"
  "usbutils"
  "aspell"
  "aspell-de"
  "earlyoom"
  "rsync"
  "reflector"
  "bat"
  "fd"
  "starship"
  "xclip"
  "tree"
  "ripgrep"
# ----------- #  
  "bitwarden"
  "vlc"
  "obs-studio"
  "gufw"
  "linux-firmware-qlogic"
  "spotify-launcher"
  "wezterm"
  "neovim"
  "intellij-idea-community-edition"
  "spectacle"
  "gimp"
  "kvantum"
  "lazygit"
# ---------- # 
  "cmake"
  "clang"
  "ninja"
  "gdb"
  "python"
  "go"
  "nodejs"
  "npm"
# ---------- # 
  "ttf-meslo-nerd"
  "powerline-fonts"
  "noto-fonts"
  "noto-fonts-cjk"
  "noto-fonts-extra"
  "noto-fonts-emoji"
)

for pkg in "${pkgs[@]}"; do
  echo "-- Installing: $pkg"
  sudo pacman -S --needed --noconfirm ${pkg}
done

echo "--- Installing AUR Software ---"

aurpkgs=(
  "brother-mfc-l2710dw"
  "zoom"
  "aic94xx-firmware"
  "wd719x-firmware"
  "upd72020x-fw"
  "ast-firmware"
  "visual-studio-code-bin"
  "anydesk-bin"
  "rustdesk-bin"
  "github-desktop-bin"
  "swift-bin"
  "brave-bin"
  "todoist-appimage"
  "onlyoffice-bin"
  "megasync-bin"
  "ttf-maple"
)

for pkg in ${aurpkgs[@]}; do
  echo "-- Installing: $pkg"
  yay -S --noconfirm ${pkg}
done

echo "--- Enabling Services ---"

sudo systemctl enable cups.service
sudo systemctl enable cups.socket
sudo systemctl start cups.service

modprobe btusb
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

echo "--- Configuring Firewall ---"

sudo ufw default reject
sudo ufw enable
sudo systemctl enable ufw.service

echo "--- Configuring Zsh ---"

chsh -s $(which zsh)
ln -sf $PWD/config/.zshrc ~/

echo "--- Configuring Wezterm ---"

ln -sf $PWD/config/wezterm/.wezterm.lua ~/

echo "--- Configuring Neovim ---"

ln -sf $PWD/config/nvim ~/.config/

echo "--- Configuring Starship ---"

ln -sf $PWD/config/starship.toml ~/.config/

echo "--- Configuring Nvidia ---"

sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-resume.service

sudo ln -sf $PWD/config/nvidia/nvidia.conf /etc/modprobe.d/
sudo ln -sf $PWD/config/nvidia/nvidia_drm.conf /etc/modprobe.d/
sudo ln -sf $PWD/config/nvidia/environment /etc/

echo "--- Cleaning Up ---"

yay -Scc --noconfirm
yay -Yc --noconfirm

sudo mkinitcpio -P

echo "--- Rebooting ---"

echo "-- Installation Finished"
echo "-- Press enter to continue --"
read

reboot
