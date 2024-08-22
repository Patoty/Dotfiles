vim.o.termguicolors = true


require("tokyonight").setup({
	-- use the night style
	style = "night",
	-- disable italic for functions
	light_style = "day",
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	-- Change the "hint" color to the "orange" color, and make the "error" color bright red
	--on_colors = function(colors)
	--  colors.hint = colors.orange
	--  colors.error = "#ff0000"
	--end
})


--vim.cmd [[ colorscheme gruvbox ]]
vim.cmd [[ colorscheme tokyonight ]]
