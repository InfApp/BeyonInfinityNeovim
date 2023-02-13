local localPath = ...
local utils = require("utils")

local files =  vim.split(vim.fn.glob('.\\plugins/*'),'\n')

require("packer_config")
for _,value in pairs(files) do --actualcode
	if value ~= "" then
		local module = utils.ParseModuleName(value)
		require(module)
	end
end

