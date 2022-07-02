local M = {}


M.Plugins_list = {
	notify = require('plugins.configs.notify'),
	telescope = require('plugins.configs.telescope'),
	nvim_tree = require('plugins.configs.nvim_tree'),
	table_only_setup = require('plugins.configs.table_only_setup'),
	lsp = require('plugins.configs.lsp')
}


return M

