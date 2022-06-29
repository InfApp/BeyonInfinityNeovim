local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_booststrap = nil
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end



local dirUtil = require('utils.dir')

require('packer').startup(function(use)
	local path = vim.fn.stdpath('config')
	dirUtil.DirMapping(
		path..'/lua/plugins/configs/',
		function(value)
			return string.sub(value,-4) == '.lua' 
		end,
		function(value)
			local module_name = string.match(value,'(.*).lua')
			require('plugins.configs.'..module_name).RegisterPlugin(use)
		end,
		function()
			print('error')
		end
	)
	if packer_bootstrap then
		require('packer').sync()
	end
end)
