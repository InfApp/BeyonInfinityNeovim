local M = {}

M.setup = function ()
	local _,notify = pcall(require,'notify')
	if not _ then
		return
	end
	notify.setup()
	vim.notify = notify 

end

M.RegisterPlugin = function(use)
	use ('rcarriga/nvim-notify')
end
return M
