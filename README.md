# NVIM CFG

**NOTE:** My nvim is based on [AstroNvim](https://github.com/AstroNvim/AstroNvim) v5+ template.

## Installation

#### Make a backup of your current nvim and shared folder

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

#### Clone the repository

**Linux/macOS**
```shell
git clone https://github.com/2TheGalaxy/nvim ~/.config/nvim
```

**Windows**
```powershell
git clone https://github.com/2TheGalaxy/nvim "$env:APPDATA\nvim"
```

#### Start Neovim

```shell
nvim
```
