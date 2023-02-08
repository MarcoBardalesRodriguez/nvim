local fn = vim.fn
local install_path

if fn.has("win32") == 1 then 
  install_path = fn.stdpath('data')..'\\site\\pack\\packer\\start\\packer.nvim'
end
if fn.has("linux") == 1 then 
  install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
end

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'			--Package manager

	use 'Shatur/neovim-ayu'				--Theme

	use 'vim-airline/vim-airline'			--Airline and Tabline

	use 'nvim-tree/nvim-web-devicons'		--Icons 

	use {'neoclide/coc.nvim', branch = 'release'}	--Autocompletion and more

	--[[ On new systems install COC packages via
		CocInstall 	coc-explorer 
				coc-tsserver
				coc-html
				coc-emmet
				coc-css
	--]]

	use 'mhinz/vim-signify'				--Git integration
end)


