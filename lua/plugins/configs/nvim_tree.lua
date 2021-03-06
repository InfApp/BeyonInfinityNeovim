local M = {}

M.setup = function ()
	local result, value = pcall(require,'nvim-tree')
	if result then
		value.setup({
			filters = {
				dotfiles = false,
			},
			disable_netrw = true,
			hijack_netrw = true,
			update_cwd = true,
			filesystem_watchers = {
				enable = true,
			},
			update_focused_file = {
				enable = true,
				update_cwd = false,
			},
			view = {
				adaptive_size = true,
				side = "left",
				width = 25,
				hide_root_folder = true,
				 },
			git = {
				enable = false,
				ignore = false,
			},
			renderer = {
				highlight_git = false,
				highlight_opened_files = "none",
			  
				indent_markers = {
				   enable = false,
				},
				icons = {
				   show = {
					  file = true,
					  folder = true,
					  folder_arrow = true,
					  git = true,
				   },
			  
				   glyphs = {
					  default = "",
					  symlink = "",
					  folder = {
					 default = "",
					 empty = "",
					 empty_open = "",
					 open = "",
					 symlink = "",
					 symlink_open = "",
					 arrow_open = "",
					 arrow_closed = "",
					  },
					  git = {
					 unstaged = "✗",
					 staged = "✓",
					 unmerged = "",
					 renamed = "➜",
					 untracked = "★",
					 deleted = "",
					 ignored = "◌",
					  },
				   },
				},
			},
		})
	end
end

M.RegisterPlugin = function(use)
	use ('kyazdani42/nvim-tree.lua')
end
return M
