local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_booststrap = nil
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
		-- My plugins here
		-- use 'foo1/bar1.nvim'
		-- use 'foo2/bar2.nvim'
		use {'wbthomason/packer.nvim',config = }
		use 'kyazdani42/nvim-web-devicons'
		use 'romgrk/barbar.nvim'
		use 'kyazdani42/nvim-tree.lua'

		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if packer_bootstrap then
				require('packer').sync()
		end
end)
