
local M = {}

local Plugins = {
	plenary = {
		repo = 'nvim-lua/plenary.nvim',
		module_name = 'plenary'		
	},
	nvim_notify={ 
		repo = 'rcarriga/nvim-notify',
		module_name = 'notify'
	},
	monokai={ 
		repo = 'tanvirtin/monokai.nvim',
		module_name = 'monokai',
		opts = { palette = require('monokai').ristretto }
	},
	lualine={ 
		repo = 'nvim-lualine/lualine.nvim',
		module_name = 'lualine',
		setup = true
	},
	barbar={ 
		repo = 'romgrk/barbar.nvim',
		module_name = '',
	},
	devicon={ 
		repo = 'kyazdani42/nvim-web-devicons',
		module_name = '',
	},
	
}

M.RegisterPlugin = function(use)
	for _,value in pairs(Plugins) do
		local config = nil
		if value['setup'] or value['opts'] ~= nil then
			config = require(value['module_name']).setup(value['opts'])
		end
		use({value['repo'],config=config})
	end
end

return M
