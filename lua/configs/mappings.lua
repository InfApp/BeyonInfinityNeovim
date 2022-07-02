



local telescope_builtin = require('telescope.builtin')

vim.keymap.set({'i','n'},'<C-p>',telescope_builtin.find_files,{silent = true,desc= "Open telescope find files"})
vim.keymap.set({'i','n'},'<C-S-f>',telescope_builtin.live_grep,{silent = true,desc= "Open telescope find files"})
vim.keymap.set({'i','n'},'<C-S-p>',function ()
	vim.cmd[[Telescope command_pallete]]
end,{desc='Open Command Pallete'})
vim.keymap.set('','<c-b>',
		function()
			require'nvim-tree'.toggle(false,true)
		end,
		{silent = true,desc= "open nvim-tree"})