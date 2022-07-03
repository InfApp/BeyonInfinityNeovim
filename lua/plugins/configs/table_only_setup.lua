
local M = {}

local Plugins = {
	plenary = {
		repo = 'nvim-lua/plenary.nvim',
		module_name = 'plenary'
	},
	monokai={ 
		repo = 'tanvirtin/monokai.nvim',
		module_name = 'monokai',
		setup = true
	},
	seoul256={
		repo = 'shaunsingh/seoul256.nvim',
		module_name = '',
	},
	gruvbox_flat={
		repo = 'eddyekofo94/gruvbox-flat.nvim',
		module_name = '',
	},
	lualine={ 
		repo = 'nvim-lualine/lualine.nvim',
		module_name = 'lualine',
		setup = true,
		opts = function ()
			vim.api.nvim_create_autocmd('ColorScheme',{
				callback=function ()
					require('lualine').setup({options = {
						theme = vim.api.nvim_command_output('colorscheme') 
					}})
				end
			})
			return nil
		end
	},
	barbar={ 
		repo = 'romgrk/barbar.nvim',
		module_name = '',
	},
	devicon={ 
		repo = 'kyazdani42/nvim-web-devicons',
		module_name = '',
	},
	nui={ 
		repo = 'MunifTanjim/nui.nvim',
		module_name = '',
	},
	find_cmdline={ 
		repo = 'VonHeikemen/fine-cmdline.nvim',
		module_name = '',
	},
	dressing={ 
		repo = 'stevearc/dressing.nvim',
		module_name = 'dressing',
		opts = {
			input = {
				    enabled = true,
				    default_prompt = "Input:",
				    prompt_align = "left",
				    insert_only = true,
				    anchor = "SW",
				    border = "rounded",
				    relative = "cursor",
				    prefer_width = 40,
				    width = nil,
				    max_width = { 140, 0.9 },
				    min_width = { 20, 0.2 },
				    winblend = 10,
				    winhighlight = "",
				    override = function(conf)
				      return conf
				    end,
				    get_config = nil,
			},
			select = {
				enabled = true,
				backend = { "telescope"},
				trim_prompt = true,
				telescope = require('telescope.themes').get_dropdown(),
			}
		}
	},
	
	
}

M.setup = function()
	for _,value in pairs(Plugins) do
		local opts = nil
		if type(value['opts']) == 'function' then
			opts = value['opts']()
		elseif type(value['opts']) =='table' then
			opts = value['opts']
		end
		if setup == true or opts then
			local _,value = pcall(require,value['module_name'])
			if _ then
				value.setup(opts)
			end
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
