require('nvim-treesitter.configs').setup {
	-- A list of parser names, or "all"
	ensure_installed = { "c", "lua", "rust", "vim", "python", "bash", "asm", "bibtex", "cmake", "cpp", "css", "dockerfile", "git_config", "git_rebase", "gitignore", "html", "json", "latex", "make", "sql", "ssh_config", "zathurarc" },

	-- Install parsers synchronously 
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
