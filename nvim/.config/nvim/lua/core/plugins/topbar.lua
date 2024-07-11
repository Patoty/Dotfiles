
local navic = require("nvim-navic")

require("lspconfig").clangd.setup {
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
	seperator = " > ",

}

require("nvim-navic").setup {
	lsp = {
		auto_attach = true,
	},
}

require('breadcrumbs').setup()
