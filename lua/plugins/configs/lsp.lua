local M = {}

M.setup = function ()
	local lsp = require('lsp-zero')
	lsp.preset('recommended')
	lsp.setup()
	vim.keymap.set('i','<C-k>',vim.lsp.buf.hover,{silent=true})
end

M.RegisterPlugin = function(use)
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/nvim-lsp-installer'},
	      
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
	      
		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
		}
	      }
end
return M
