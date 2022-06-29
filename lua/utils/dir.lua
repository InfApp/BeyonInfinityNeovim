local M = {}
local uv = vim.loop

M.DirMapping = function(dir,predicate,callback,onError)
	local iter = uv.fs_scandir(dir)
	local result,value = pcall(uv.fs_scandir_next,iter)
	if not result then
		if onError ~= nil then
			onError()
		end
		return
	end

	while value ~= nil do
		if predicate(value) then
			callback(value)
		end
		value = uv.fs_scandir_next(iter)
	end
end

return M
