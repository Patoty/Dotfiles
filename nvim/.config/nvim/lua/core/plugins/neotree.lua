vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("neo-tree").setup {
	close_if_last_window = true,
	popup_border_style = 'single',
	enable_git_status = true,
	enable_modified_markers = true,
	sort_case_insensitive = true,
	enable_diagnostics = true,

	window = {
		position = 'float',
		width = 35,
	},
}

vim.keymap.set('n', '<c-n>', ':Neotree toggle left<CR>', {silent = true, desc = 'Left File Explorer'})
vim.keymap.set('n', '<leader>n', ':Neotree toggle float<CR>', {silent = true, desc = 'Float File Explorer'})
