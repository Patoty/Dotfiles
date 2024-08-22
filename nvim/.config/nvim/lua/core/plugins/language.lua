
--require("telescope-thesaurus").setup{
--	extensions = {
--		thesarus = {
--			provider = 'datamuse',
--		},
--	},
--}

vim.keymap.set('n', '<leader>tk', '<cmd>Telescope thesaurus lookup<CR>')
--vim.g.dictionary_api_key = ''
