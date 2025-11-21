# NVIM CFG

**NOTE:** My nvim is based on [AstroNvim](https://github.com/AstroNvim/AstroNvim) v5+ template.

Recommended transparent terminal

## Requirements
- gcc
- tree-sitter-cli
- python
- nodejs

## Installation

### Make a backup of your current nvim and shared folder
**Linux**
```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Clone the repository
**Linux/macOS**
```shell
git clone https://github.com/2TheGalaxy/nvim ~/.config/nvim
```

### Start Neovim and let it sit for a while
```shell
nvim
```
### inside neovim run:
```
:TSInstall yaml
```

