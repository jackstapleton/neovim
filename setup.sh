
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

mv nvim.appimage ~/.local/share/
alias nvim="~/.local/share/nvim/nvim.appimage"
echo 'alias nvim="~/.local/share/nvim/nvim.appimage"' >> ~/.bash_profile


./nvim.appimage --appimage-extract
mv squashfs-root ~/.local/share/
ln -s ~/.local/share/squashfs-root/AppRun /usr/bin/nvim

