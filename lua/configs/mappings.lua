local telescope_builtin = require('telescope.builtin')

vim.keymap.set({'i','n'},'<C-p>',telescope_builtin.find_files,{silent = true,desc= "Open telescope find files"})
vim.keymap.set({'i','n'},'<C-f>',telescope_builtin.live_grep,{silent = true,desc= "Open telescope find files"})
vim.keymap.set({'i','n'},'<C-S-P>',telescope_builtin.buffers,{silent = true,desc= "Open telescope find files"})


vim.api.nvim_set_keymap("i","<C-a>","<ESC>gg^vG$",{silent=true})
vim.api.nvim_set_keymap("i","<C-c>","<ESC>",{silent=true})


--vim.keymap.set('n',':',require('fine-cmdline').open,{desc='Open Command Pallete'})
vim.keymap.set('','<c-b>',
		function()
			require'nvim-tree'.toggle(false,true)
		end,
		{silent = true,desc= "open nvim-tree"})
vim.cmd([[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]])

vim.cmd([[set number]])


-- place this in one of your configuration file(s)
vim.keymap.set({'v','n'}, 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.keymap.set({'v','n'}, 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.keymap.set({'v','n'}, 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.keymap.set({'v','n'}, 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
