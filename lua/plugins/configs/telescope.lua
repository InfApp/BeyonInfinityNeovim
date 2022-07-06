local M = {}

M.setup = function ()
	local actions = require('telescope.actions')
	local telescope = require('telescope')
	local opts = {
		defaults = {
			mappings={
				i = {
					["<C-k>"] = actions.move_selection_previous,
					["<C-j>"] = actions.move_selection_next,
				},
				n = {
					["<C-k>"] = actions.move_selection_previous,
					["<C-j>"] = actions.move_selection_next,
				},
			},
			
			
			file_ignore_patterns = { "node_modules",".svn" },
			path_display = { "truncate" },
			prompt_prefix = "   ",
      			selection_caret = "> ",
			initial_mode = "insert",
			color_devicons = true,
		},
		pickers={	
			find_files={
				theme='dropdown',
				previewer=false,
			},
			commands={
				theme='dropdown',
				previewer=false,
			},
		},
		extensions = {
			fzf = {
				fuzzy = true,                    -- false will only do exact matching
				override_generic_sorter = true,  -- override the generic sorter
				override_file_sorter = true,     -- override the file sorter
				case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
				-- the default case_mode is "smart_case"
			},
			workspaces= {},
			notify = {},
		}
	}
	telescope.setup(opts)

	for key,_ in pairs(opts['extensions']) do
		pcall(telescope.load_extension,key)
	end
		require'nvim-treesitter.configs'.setup {
	  -- A list of parser names, or "all"
			ensure_installed = { "c", "lua", "rust" , "cpp"},
			
			  -- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,
					
			highlight = {
			    -- `false` will disable the whole extensions
			    enable = true,
		  	},
		}
end

M.RegisterPlugin = function(use)
	use ({'nvim-telescope/telescope.nvim'})
	use ({'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
	use ({'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'})
	use ('sharkdp/fd')
end
return M
