local M = {}


M.Plugins_list = {
	telescope = require('plugins.configs.telescope'),
	nvim_tree = require('plugins.configs.nvim_tree'),
	table_only_setup = require('plugins.configs.table_only_setup')
}


return M

