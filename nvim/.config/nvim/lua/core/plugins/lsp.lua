require("mason").setup()

require("mason-lspconfig").setup {
	--ensure_installed = { "lua_ls" }
	ensure_installed = { "lua_ls", "rust_analyzer", "asm_lsp", "bashls", "clangd", "cmake", "cssls", "dockerls", "grammarly", "html", "jsonls", "texlab", "autotools_ls", "markdown_oxide", "pylsp", "sqlls",  }
}

local on_attach = function(_,_)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, {})

	vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap=true, silent=true })


end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

require("lspconfig").rust_analyzer.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

require("lspconfig").clangd.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

require("lspconfig").texlab.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {"texlab"},
	filetypes = {"tex", "bib"},
	settings =  {
		texlab = {
			rootDirectory = nil,
			build = _G.TexMagicBuildConfig,

			forwardSearch = {
				executable = "evince",
				args = {"%p"},
			},
		},
	},
}

require("lspconfig").cmake.setup {
	on_attach = on_attach
}

require("lspconfig").bashls.setup {
	on_attach = on_attach
}

