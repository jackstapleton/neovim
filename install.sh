
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/local/share/nvim/
mv nvim.appimage ~/.local/share/nvim/
echo 'alias nvim="~/.local/share/nvim/nvim.appimage"' >> ~/.bash_profile
