
vim.opt.smartindent = true
vim.opt.splitright = true
vim.opt.splitbelow = true
-- set diffopt+ = vertical
-- if &diff
--     set diffopt- = internal
--     set diffopt+ = vertical
-- endif
vim.opt.showcmd = true
-- show existing tab with 2 spaces width
vim.opt.tabstop = 2
-- when indenting with '>', use 2 spaces width
vim.opt.shiftwidth = 2
-- On pressing tab, insert 2 spaces
vim.opt.expandtab = true

vim.opt.cursorline = true
vim.opt.backspace = indent,eol,start
vim.opt.number = true
-- vim.opt.relativenumber
-- augroup numbertoggle
--   autocmd!
--   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
--   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
--   autocmd BufEnter NERD_* set norelativenumber
-- augroup END
-- vim.opt.encoding = UTF-8
-- highlight all results for search term
vim.opt.termguicolors = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.list = true
vim.opt.listchars = "eol:¬,tab:·▸,trail:⎵"
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.hidden = true
-- set wrapmargin = 2
vim.opt.mouse = "a"
-- Ignore cases while searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- set spell spelllang = 'en_us'
-- vim.opt.undofile
-- vim.opt.undodir = "~/.config/nvim/.undo/,~/.undo/,/tmp//"
-- vim.opt.backupdir = "~/.config/nvim/.backup/,~/.backup/,/tmp//"
-- vim.opt.directory = "~/.config/nvim/.swp/,~/.swp/,/tmp//"
-- Show file options above the command line
vim.opt.wildmenu = true
-- Don't offer to open or look in/at certain directories/files
vim.opt.wildignore:append{
   '**/build/**',
   '**/node_modules/**', '**/bower_components/**',
   '*.bmp', '*.gif', '*.ico', '*.jpg',
   '*.pdf', '*.png', '*.psd',
}
-- Look in the current directory
vim.opt.path:append("**")
-- Find files using fzf
vim.opt.runtimepath:append("~/.fzf")
-- Folding
-- vim.opt.foldmethod = syntax
-- vim.opt.foldlevelstart = 99

