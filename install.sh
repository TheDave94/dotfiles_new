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
  "ghostty"
  "neovim"
  "intellij-idea-community-edition"
  "spectacle"
  "gimp"
  "kvantum"
  "lazygit"
  "kdeconnect"
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
  "swift-bin"
  "brave-bin"
  "onlyoffice-bin"
  "megasync-bin"
  "ttf-maple"
  "zen-browser-bin"
  "apple-fonts"
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

echo "--- Configuring Ghostty ---"

mkdir -p ~/.config/ghostty/
ln -sf $PWD/config/ghostty/config ~/.config/ghostty/

echo "--- Configuring Neovim ---"

ln -sf $PWD/config/nvim ~/.config/

echo "--- Installing Language Servers ---"

sudo pacman -S --needed --noconfirm go pyright

sudo npm i -g vscode-langservers-extracted
sudo npm install -g typescript typescript-language-server

go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/nametake/golangci-lint-langserver@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

echo "--- Configuring Starship ---"

ln -sf $PWD/config/starship.toml ~/.config/

echo "--- Configuring Nvidia ---"

sudo pacman -S --needed --noconfirm libva-nvidia-driver

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
