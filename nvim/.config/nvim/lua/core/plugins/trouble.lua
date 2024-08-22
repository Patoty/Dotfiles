
-- require("trouble").setup{
-- 	position = "bottom", -- position of the list can be: bottom, top, left, right
--     height = 10, -- height of the trouble list when position is top or bottom
--     width = 50, -- width of the list when position is left or right
--     icons = true, -- use devicons for filenames
--     mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
-- 	group = true, -- group results by file
--     padding = true, -- add an extra new line on top of the list
--     action_keys = { -- key mappings for actions in the trouble list
--         -- map to {} to remove a mapping, for example:
--         -- close = {},
--         close = "q", -- close the list
--         cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
--         refresh = "r", -- manually refresh
--         jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
--         open_split = { "<c-x>" }, -- open buffer in new split
--         open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
--         open_tab = { "<c-t>" }, -- open buffer in new tab
--         jump_close = {"o"}, -- jump to the diagnostic and close the list
--         toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
--         toggle_preview = "P", -- toggle auto_preview
--         hover = "K", -- opens a small popup with the full multiline message
--         preview = "p", -- preview the diagnostic location
--         close_folds = {"zM", "zm"}, -- close all folds
--         open_folds = {"zR", "zr"}, -- open all folds
--         toggle_fold = {"zA", "za"}, -- toggle fold of current file
--         previous = "k", -- previous item
--         next = "j" -- next item
--     },
--     indent_lines = true, -- add an indent guide below the fold icons
--     auto_open = false, -- automatically open the list when you have diagnostics
--     auto_close = false, -- automatically close the list when you have no diagnostics
--     auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
--     auto_fold = false, -- automatically fold a file trouble list at creation
--     auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
-- 	--auto_close = true,
-- 	----mode = "diagnostics",	
-- 	--modes = {
-- 	--	preview_float = {
-- 	--		mode = "diagnostics",
-- 	--		preview = {
-- 	--			type = "float",
-- 	--			relative = "editor",
-- 	--			border = "rounded",
-- 	--			title = "Preview",
-- 	--			title_pos = "center",
-- 	--			position = {0, -2},
-- 	--			size = { width = 0.3, height = 0.3 },
-- 	--			zindex = 200,
-- 	--		}
-- 	--	},
-- 
-- 	--},
-- }


vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workpace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
vim.keymap.set("n", "<leader>td", function() require("trouble").toggle("diagnostics") end)
