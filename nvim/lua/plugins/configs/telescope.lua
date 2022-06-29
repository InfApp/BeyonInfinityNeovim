local M = {}

function SetupTelescope()
	local actions = require('telescope.actions')
	local telescope = require('telescope')

	telescope.setup({
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
			}
		}
	})

	local ext_list = {
		fzf='fzf'
	}
	return ext_list
end

function SetupTeleScopeExtension(ext_list)
	for _,v in pairs(ext_list) do
		require'telescope'.load_extension(v)
	end
end

M.RegisterPlugin = function(use)
	use ({'nvim-telescope/telescope.nvim',
	config  = function()		
		local _,ext_list = pcall(SetupTelescope)
		if _ then
			pcall(SetupTeleScopeExtension,ext_list)
		end
		vim.keymap.set({'i','n'},'<C-p>',
				require('telescope.builtin').find_files,
				{silent = true,desc= "Open telescope find files"}
			)
			vim.keymap.set({'i','n'},'<C-S-f>',
				require('telescope.builtin').live_grep,
				{silent = true,desc= "Open telescope find files"}
			)
		vim.keymap.set({'i','n'},'<C-S-p>',
		require'telescope.builtin'.commands,
				{silent = true,desc='Open Command Pallete'}
		)
		vim.api.nvim_create_user_command("SelectThemes",require'telescope.builtin'.colorscheme,{})
	end
	})
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
end
return M
