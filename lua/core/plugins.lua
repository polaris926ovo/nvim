local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- thems
	use 'folke/tokyonight.nvim'

	-- file tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',  -- optional, for file icons
		},
		tag = 'nightly'  --optional, updated every week
	}
	
	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requries = {
			'kyazdani42/nvim-web-devicons',  -- optional, for file icons
			opt = true
		},
	}

	-- buffer line
	use {
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons',
	}

	-- syntax highlight
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function () require('nvim-treesitter.install').update({with_sync = true}) end
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
