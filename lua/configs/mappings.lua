



local telescope_builtin = require('telescope.builtin')

vim.keymap.set({'i','n'},'<C-p>',telescope_builtin.find_files,{silent = true,desc= "Open telescope find files"})
vim.keymap.set({'i','n'},'<C-f>',telescope_builtin.live_grep,{silent = true,desc= "Open telescope find files"})
vim.api.nvim_set_keymap("i","<C-a>","<ESC>gg^vG$",{silent=true})
vim.keymap.set('n',':',require('fine-cmdline').open,{desc='Open Command Pallete'})
vim.keymap.set('','<c-b>',
		function()
			require'nvim-tree'.toggle(false,true)
		end,
		{silent = true,desc= "open nvim-tree"})
vim.cmd([[augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END]])

vim.cmd([[set relativenumber]])
