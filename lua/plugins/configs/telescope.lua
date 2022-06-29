local M = {}

M.RegisterPlugin = function(use)
	use ({'nvim-telescope/telescope.nvim',
	config = function()
		require'telescope'.load_extension('fzf')
		vim.keymap.set({'i','n'},'<C-p>',
				require('telescope.builtin').find_files,
				{silent = true,desc= "Open telescope find files"}
		)
		vim.keymap.set({'i','n'},'<C-S-f>',
				require('telescope.builtin').live_grep,
				{silent = true,desc= "Open telescope find files"}
		)
		
		vim.keymap.set({'i','n'},'<C-S-p>',
				require'telescope.builtin'.commands
				{desc='Open Command Pallete',silent=true})
	end
	setup = function()
		require'telescope'.setup({
						defaults = { 
						mappings = { 
							i = {
								["?"] = action_layout.toggle_preview,
								["<C-k>"] = actions.move_selection_previous,
      								["<C-j>"] = actions.move_selection_next,
							},
						},
						},
						pickers = {
							find_files = {
								theme = "dropdown",
								previewer = false,
							},
							commands= {
								theme = 'dropdown',
								previewer = false,
							}
						}
					})
	end
})
end
return M
