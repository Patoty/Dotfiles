
require("auto-session").setup {
	auto_session_supress_dirs = { "~/", "~/Code", "~/Downloads", "/"},
	session_lens = {
		buftypes_to_ignore = {},
		load_on_setup = true,
		theme_conf = { border = true },
		previewer = false,
	},

	vim.keymap.set('n', '<leader>ls', require("auto-session.session-lens").search_session, {noremap = true})
}
