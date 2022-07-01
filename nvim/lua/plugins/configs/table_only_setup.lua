
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
						theme = 'gruvbox-flat'
						-- ... your lualine config
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
	command_pallete={ 
		repo = 'InfApp/command_pallete.nvim',
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
				    -- Set to false to disable the vim.ui.input implementation
				    enabled = true,

				    -- Default prompt string
				    default_prompt = "Input:",
				
				    -- Can be 'left', 'right', or 'center'
				    prompt_align = "left",
				
				    -- When true, <Esc> will close the modal
				    insert_only = true,
				
				    -- These are passed to nvim_open_win
				    anchor = "SW",
				    border = "rounded",
				    -- 'editor' and 'win' will default to being centered
				    relative = "cursor",
				
				    -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
				    prefer_width = 40,
				    width = nil,
				    -- min_width and max_width can be a list of mixed types.
				    -- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
				    max_width = { 140, 0.9 },
				    min_width = { 20, 0.2 },
				
				    -- Window transparency (0-100)
				    winblend = 10,
				    -- Change default highlight groups (see :help winhl)
				    winhighlight = "",
				
				    override = function(conf)
				      -- This is the config that will be passed to nvim_open_win.
				      -- Change values here to customize the layout
				      return conf
				    end,
				
				    -- see :help dressing_get_config
				    get_config = nil,
			},
			select = {
				-- Set to false to disable the vim.ui.select implementation
				enabled = true,
			    
				-- Priority list of preferred vim.select implementations
				backend = { "telescope"},
			    
				-- Trim trailing `:` from prompt
				trim_prompt = true,
			    
				-- Options for telescope selector
				-- These are passed into the telescope picker directly. Can be used like:
				-- telescope = require('telescope.themes').get_ivy({...})
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
