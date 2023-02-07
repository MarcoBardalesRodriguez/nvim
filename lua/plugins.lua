local fn = vim.fn
local install_path = fn.stdpath('data')..'\\site\\pack\\packer\\start\\packer.nvim'

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
				coc-emmet
				coc-css
	--]]

	use 'mhinz/vim-signify'				--Git integration
end)


