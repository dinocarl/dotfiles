local Remap = require("personalization.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap
vim.g.mapleader = " "

-- remove search highlighting
nnoremap("<esc><esc>", ":noh<cr>")
-- Automatically re-center the first search result
-- cnoremap <expr> <CR> getcmdtype() == '/' ? '<CR>zz' : '<CR>'
-- Automatically re-center the next search result
nnoremap("n", "nzz")
nnoremap("N", "Nzz")
nnoremap("*", "*zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
-- Resize horizontal splits to be a 1/3 or 2/3 of the window
nnoremap("<leader>=", ":exe --resize -- . (winheight(0) * 3/2)<CR>")
nnoremap("<leader>-", ":exe --resize -- . (winheight(0) * 2/3)<CR>")
-- Resize vertical splits to be a 1/3 or 2/3 of the window
nnoremap("<leader>9", ":exe --vertical resize -- . (winwidth(0) * 3/4)<CR>")
nnoremap("<leader>0", ":exe --vertical resize -- . (winwidth(0) * 5/4)<CR>")
nnoremap("<leader>]", ":vertical resize +5<cr>")
nnoremap("<leader>[", ":vertical resize -5<cr>")
nnoremap("<leader>sr", "vi}:sort<cr>")
-- finds
nnoremap("<leader>P", ":FZF <cr>")
-- Find astring in files in the path using fzf
nnoremap("<leader>F", ":Rg <cr>")
nnoremap("<leader>s", ":sfind *")
nnoremap("<leader>S", ":sfind <C-R>=xpand('%:p:h').'/**/*'<cr>")
-- nnoremap("<leader>v :vert sfind *")
-- nnoremap("<leader>V :vert sfind <C-R>=expand('%:p:h').'/**/*'<cr>")
-- grep
nnoremap("<leader>E", ":grep -R --exclude-dir={node_modules,build,build_react,dist,coverage,.cache-loader,.git} --exclude=*.{png,jpg,vim,swp,swo,map,info,xml} '' ./<Left><Left><Left><Left>")
-- search and replace
-- simple substition command
nnoremap("<leader>r", ":%s///g<Left><Left><Left>")
-- subsitute current word
nnoremap("<leader>R", ":%s/<<C-r><C-w>>//g<Left><Left>")
-- Save the file
nnoremap("<leader>s", ":update<cr>")
-- Quit everything
nnoremap("<leader>q", ":qa<cr>")
-- Activate markdown preview
nnoremap("<C-p>", ":MarkdownPreview<cr>")
-- Sometimes syntax highlighting goes, so create a shorttcut that forces a
-- redraw
nnoremap("<leader>C", ":syntax sync fromstart<cr>")
-- shortcuts to move between buffers
-- adding `hide` ensures that undos aren't lost
-- by hiding the buffer instead of unloading it
nmap("<leader>l", ":hide bnext<cr>")
nmap("<leader>h", ":hide bprevious<cr>")

-- Close current buffer, then move to the next one
nmap("<leader>w", ":<c-u>bn <bar> bd #<cr>")

-- Close current buffer, then move to the next one
nmap("<leader>w", ":<c-u>bn <bar> bd #<cr>")
-- Close all Buffers except the current one
nmap("<leader>W", ":%bd <bar> e# <cr>")

nmap("<C-k>", "<Plug>(ale_previous_wrap)")
nmap("<C-j>", "<Plug>(ale_next_wrap)")
nmap("<leader>af", ":ALEFix <cr>")
vim.cmd[[highlight ALEWarning ctermbg=none cterm=underline gui=italic]]

-- Toggle the NERDTree window
nnoremap("<leader>x", ":NERDTreeToggle<cr>")
-- Find the current file in NERDTree, and move the cursor to a consistent spot
nnoremap("<leader>X", ":NERDTreeFind<cr> zz ^ V <esc>")

-- Add empty line(s) below cursor
nnoremap("<leader>o", ":<C-u>call append(line(--.--),   repeat([----], v:count1))<CR>")
-- Add empty line(s) above cursor
nnoremap("<leader>O", ":<C-u>call append(line(--.--)-1, repeat([----], v:count1))<CR>")

inoremap("<C-BS>", "<C-O>diw")
nnoremap("<C-BS>", "diw")

nnoremap("<leader>c", "ciw")
nnoremap("<leader>ae", ":e!<cr>")

nmap("<leader>fr", "\"+yiw :Rg<cr>")
nmap("<leader>b", ":Buffers<cr>")

-- Replay q macro with Q
nmap("Q", "@q")

-- plugins
nmap("<leader>sm", ":MaximizerToggle<CR>")
