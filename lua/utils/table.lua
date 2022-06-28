local M = {}


M.merge_table  = function(lTable,RTable)
	vim.tbl_deep_extend('force',lTable,RTable)
end
