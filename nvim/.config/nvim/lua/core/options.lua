
--vim.opt.backspace = '4'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.ignorecase = true -- ignore case in search patterns
--vim.opt.showtabline = 1 -- always show tabs
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.smartcase = true
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

vim.opt.updatetime = 100 -- faster completion (default is 4000 ns)
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time

vim.opt.errorbells = false
vim.opt.wildmenu = true

--text wrapping
--vim.opt.wrap = false -- display lines as one long line
vim.opt.linebreak = true
vim.opt.showbreak = '  >> '
vim.opt.breakindent = true
vim.opt.breakindentopt = { 'shift:2', 'sbr' }

--vim.opt.foldmethod = 'indent'
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldcolumn = "0"
--vim.opt.foldtext = ""

vim.opt.foldlevel = 99 --minimum level of a fold that will be closed by default
vim.opt.foldlevelstart = 15 --any fold beyond 1 is closed by default
vim.opt.foldenable = false


vim.opt.hlsearch = false
vim.opt.incsearch = true
