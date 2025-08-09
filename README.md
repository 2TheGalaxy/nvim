# NVIM CFG

**NOTE:** My nvim is based on [AstroNvim](https://github.com/AstroNvim/AstroNvim) v5+ template.

## Installation

### Make a backup of your current nvim and shared folder

**Linux/macOS**
```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

**Windows**
```powershell
Move-Item "$env:APPDATA\nvim" "$env:APPDATA\nvim.bak"
Move-Item "$env:LOCALAPPDATA\nvim" "$env:LOCALAPPDATA\nvim.bak"
Move-Item "$env:LOCALAPPDATA\nvim-data" "$env:LOCALAPPDATA\nvim-data.bak"
Move-Item "$env:LOCALAPPDATA\nvim-cache" "$env:LOCALAPPDATA\nvim-cache.bak"
```

### Clone the repository

**Linux/macOS**
```shell
git clone https://github.com/2TheGalaxy/nvim ~/.config/nvim
```

**Windows**
```powershell
git clone https://github.com/2TheGalaxy/nvim "$env:APPDATA\nvim"
```

### Start Neovim

```shell
nvim
```


## FRESH UBUNTU 24.04 x86-64 install with neovim config
(copy each section separately and run in that order):

### seup ubuntu and dependencies
-- make dev dir for projects and set aliases -> nvim config dir as "nvc", dev dir as "dev"
-- apt
-- fuse
-- Homebrew
(follow prompts, ignore brew prompt for gcc and build-essential)
```
cd ~
mkdir -p ~/.config/nvim ~/dev
echo "alias nvc='cd ~/.config/nvim'" >> ~/.bashrc
echo "alias dev='cd ~/dev'" >> ~/.bashrc
source ~/.bashrc
sudo add-apt-repository universe
sudo apt install libfuse2t64
sudo apt install build-essential
sudo apt update
sudo apt full-upgrade
sudo curl -o- https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
```
-- gcc
-- nodejs
-- tree-sitter
-- golang
-- neovim
-- ripgrep
-- lazygit
-- uv
-- python
-- vectorcode
-- gdu
-- bottom
(follow prompts)
```
brew install gcc
brew install node@24
brew install tree-sitter
brew install go
brew install neovim
brew install ripgrep
brew install lazygit
brew install uv
uv python install
uv tool install vectorcode
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
sudo mv gdu_linux_amd64 /usr/bin/gdu
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.11.0/bottom_0.11.0-1_amd64.deb
sudo dpkg -i bottom_0.11.0-1_amd64.deb
sudo apt autoremove
uv tool update-shell
```
### restart shell and reopen

### clone repo
```
git clone https://github.com/2TheGalaxy/nvim ~/.config/nvim
```
### cd into git repo, run lazygit for few seconds and quit using "q"
```
nvc
lazygit
```
### run neovim and let it sit for a while
```
nvim
```
