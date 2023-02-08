# Neovim Setup

Setup made in lua using Packer as package manager

### Requirement

- emmet (npm)
- neovim >= 0.8

### Where to clone it ?

**Windows ->**
`git clone https://github.com/MarcoBardalesRodriguez/nvim.git %HOMEPATH%/AppData/Local/nvim`

**Linux ->**
`git clone https://github.com/MarcoBardalesRodriguez/nvim.git ~/.config/nvim`

### Package manager 

**Packer** will be installed automatically

```lua

local fn = vim.fn
local install_path

if fn.has("win32") == 1 then 
  local install_path = fn.stdpath('data')..'\\site\\pack\\packer\\start\\packer.nvim'
end
if fn.has("linux") == 1 then 
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
end

local fn = vim.fn
local install_path = fn.stdpath('data')..'\\site\\pack\\packer\\start\\packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

```

### How to install Packages ?

For this execute :
`:PackerSync `


## Directories and Files 

| Directories			| Content	|
| :---------------------------- | :------------ |
| lua				| settings files			|  
| lua/plugins-setup		| settings for each plugin installed	|  
| lua/plugins-keymaps		| keymap for each plugin installed	|  


| Files 			| Content	|
| :---------------------------- | :------------ |
| init.lua			| 'require' to all files		|  
| coc-settings.json		| settings for 'coc' and its plugins	|  
| lua/setup.lua			| neovim's own general settings		|  
| lua/keymaps.lua		| keymap for neovim own commands	|  
| lua/plugins.lua		| package manager configuration		|  

## Automated tasks

### Installing of packer.nvim on windows and Linux

### Importing of files in the 'plugins-setup' and 'plugins-keymaps' directories to init.lua file







