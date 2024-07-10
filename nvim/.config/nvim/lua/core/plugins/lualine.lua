require('lualine').setup {
	options = {
		icons_enabled = true,
		--theme = 'gruvbox',
		theme = 'auto',
		globalstatus = true,
		disabled_filetypes = {
        	statusline = {
        		"alfa-nvim",
        		"help",
        		"neo-tree",
        		"Trouble",
        		"spectre_panel",
        		"toggleterm",
          	},
          winbar = {},
        },
	},
	sections = {
		lualine_a = {
			{
				'filename',
				path = 1,
			}
		}
	}
}
