local M = {}

M.setup = function ()
	require'notify'.setup({
		background_colour = '#DCDCDC'
	})
	vim.notify = require'notify'

end

M.RegisterPlugin = function(use)
	use ('rcarriga/nvim-notify')
end
return M
