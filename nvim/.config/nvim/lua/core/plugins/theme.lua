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

require("everforest").setup{
	background = "hard",
	--transparent_background_level = 0.9,
	transparent_background_level = 1,
	italics = true,

	colors_override = function (palette)
		-- palette.bg0 = "#222222"
		-- palette.bg1 = "#222222"
		palette.bg2 = "#222222"
		-- palette.bg3 = "#222222"
		-- palette.bg4 = "#222222"
		-- palette.bg5 = "#222222"
		-- palette.bg_visual = "#222222"
		--palette.bg_dim = "#222222"
	end
}

require("gruvbox").setup{
	terminal_colors = true,
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_indent_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
  	overrides = {},
  	dim_inactive = false,
  	transparent_mode = false,
	palette_overrides = {
	},

}

--vim.o.background = "light"
-- require("everforest").load()
--vim.cmd [[ colorscheme gruvbox ]]
--vim.cmd [[ colorscheme tokyonight ]]
--vim.cmd [[ colorscheme miasma ]]
