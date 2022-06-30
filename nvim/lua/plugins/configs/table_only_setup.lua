
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
		setup = true
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

M.setup = function()
	for _,value in pairs(Plugins) do
		print(_)
		local opts = nil
		if type(value['opts']) == 'function' then
			opts = value['opts']()
		elseif type(value['opts']) =='table' then
			opts = value['opts']
		end
		if setup == true or opts then
			require(value['module_name']).setup(opts)
		end
	end
end

M.RegisterPlugin = function(use)
	for _,value in pairs(Plugins) do
		local config = nil
		use({value['repo'],config=config})
	end
end

return M
