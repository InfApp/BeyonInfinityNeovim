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
			preview = false,
			
			file_ignore_patterns = { "node_modules" },
			path_display = { "truncate" },
			prompt_prefix = "   ",
      			selection_caret = "> ",
			initial_mode = "insert",
			color_devicons = true,
		},
		pickers={
			live_grep = {
				preview= require("telescope.previewers").vim_buffer_vimgrep.new
			},
			find_files={
				theme='dropdown'
			},
			commands={
				theme='dropdown'
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
			notify = {},
			command_pallete = {}
		}
	}
	telescope.setup(opts)

	for key,_ in pairs(opts['extensions']) do
		telescope.load_extension(key)
	end
end

M.RegisterPlugin = function(use)
	use ({'nvim-telescope/telescope.nvim'})
	use ({'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
end
return M
