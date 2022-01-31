set nocompatible              " be iMproved, required
set ttimeout
set ttimeoutlen=50

" set the runtime path to include vim-plug and initialize
call plug#begin('~/.vim/plugged')

" NERDTree
Plug 'preservim/nerdtree'

" git
Plug 'tpope/vim-fugitive'

" Intelligently pair common character sets
" Plug 'jiangmiao/auto-pairs'

" Shortcuts to split and join blocks of code
Plug 'AndrewRadev/splitjoin.vim'

" Fade out non-focused splits
Plug 'TaDaa/vimade'

Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'

" For TypeScript
Plug 'leafgarland/typescript-vim'

" Svelte
Plug 'evanleck/vim-svelte'

" UltiSnips
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

" Enable airline Plug
Plug 'vim-airline/vim-airline'

" Enable devicons
Plug 'ryanoasis/vim-devicons'

" Airline Options
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Use the arrows
let g:airline_powerline_fonts = 1
" Ensure that terminal windows show in the buffer list
" For versions of airline >=  0.10
" https://github.com/vim-airline/vim-airline/commit/a60eabb
let g:airline#extensions#tabline#ignore_bufadd_pat = 'gundo|undotree|vimfiler|tagbar|nerd_tree|startify'

" Elm
Plug 'elmcast/elm-vim'

" for eslint
Plug 'w0rp/ale'
" Plug 'editorconfig/editorconfig-vim'

" cobalt2 colorscheme
Plug 'gertjanreynaert/cobalt2-vim-theme'
" blackboard colorscheme
Plug 'wmvanvliet/vim-blackboard'

" Markdown previewer
" After Plug install, make sure to
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" vim surround
Plug 'tpope/vim-surround'

" comments
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
let g:sessions_dir = '~/.vim/sessions'
let g:prosession_dir = '~/.vim/sessions'

" for Clojure dev
Plug 'tpope/vim-fireplace'
" Follow installation instructions here
" https://github.com/venantius/vim-cljfmt#installation
Plug 'venantius/vim-cljfmt'
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'eraserhd/parinfer-rust'

" Code Formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'branch': 'release/0.x' }
" Change background colors of color values to reflect the value in code
Plug 'ap/vim-css-color'
Plug 'tpope/vim-sleuth'
" Allow easy conversions between cases, including snake, kebab, camel, etc
Plug 'tpope/vim-abolish'

" Fuzzy Find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required

filetype plugin indent on    " required
set smartindent
" To ignore plugin indent changes, instead use:
"filetype plugin on

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
   call webdevicons#refresh()
 endif

colorscheme cobalt2

syntax on
" filetype plugin indent on
set splitright
set splitbelow
" set diffopt+=vertical
if &diff
    set diffopt-=internal
    set diffopt+=vertical
endif
set showcmd
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab


" create a helpful crosshair for the current spot
set cursorline
" set cursorcolumn

set backspace=indent,eol,start

set number
" set number relativenumber
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"   autocmd BufEnter NERD_* set norelativenumber
" augroup END
autocmd BufEnter NERD_* set norelativenumber

set encoding=UTF-8

" highlight all results for search term
set hlsearch
set incsearch
" remove search highlighting
nnoremap <silent> <esc><esc> :noh<cr>
" Automatically re-center the first search result
cnoremap <expr> <CR> getcmdtype() == '/' ? '<CR>zz' : '<CR>'
" Automatically re-center the next search result
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz

set list
set listchars=eol:¬,tab:·▸,trail:⎵
set nowrap
set linebreak

set hidden

" set wrapmargin=2

set mouse=a

let mapleader = ' '

" Ignore cases while searching
set ignorecase

" set spell spelllang=en_us

set undofile
set undodir=~/.vim/.undo/,~/.undo/,/tmp//
set backupdir=~/.vim/.backup/,~/.backup/,/tmp//
set directory=~/.vim/.swp/,~/.swp/,/tmp//

" Change the cursor for different modes
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[2 q"
" set guicursor=n-v-c:block-Cursor
" set guicursor+=n-v-c:blinkon10

" Show file options above the command line
set wildmenu

" Don't offer to open or look in/at certain directories/files
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=**/node_modules/**,**/bower_components/**,**/build/**

" Resize horizontal splits to be a 1/3 or 2/3 of the window
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" Resize vertical splits to be a 1/3 or 2/3 of the window
nnoremap <silent> <Leader>9 :exe "vertical resize " . (winwidth(0) * 3/4)<CR>
nnoremap <silent> <Leader>0 :exe "vertical resize " . (winwidth(0) * 5/4)<CR>

nnoremap <silent> <leader>] :vertical resize +5<cr>
nnoremap <silent> <leader>[ :vertical resize -5<cr>

nnoremap <silent> <leader>sr vi}:sort<cr>

" finds
" Look in the current directory
set path+=**
" Find files using fzf
set rtp+=~/.fzf
nnoremap <leader>P :FZF <cr>
" Find astring in files in the path using fzf
nnoremap <leader>F :Rg <cr>
nnoremap <leader>s :sfind *
nnoremap <leader>S :sfind <C-R>=expand('%:p:h').'/**/*'<cr>
" nnoremap <leader>v :vert sfind *
" nnoremap <leader>V :vert sfind <C-R>=expand('%:p:h').'/**/*'<cr>

" grep
nnoremap <leader>E :grep -R --exclude-dir={node_modules,build,build_react,dist,coverage,.cache-loader,.git} --exclude=*.{png,jpg,vim,swp,swo,map,info,xml} '' ./<Left><Left><Left><Left>

" search and replace
" simple substition command
nnoremap <leader>r :%s///g<Left><Left><Left>
" subsitute current word
:nnoremap <Leader>R :%s/\<<C-r><C-w>\>//g<Left><Left>

" Line moving
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
nnoremap <M-j> :m .+1<cr>==
nnoremap <M-k> :m .-2<cr>==
" inoremap <M-j> <esc>:m .+1<cr>==gi
" inoremap <M-k> <esc>:m .-2<cr>==gi
vnoremap <M-j> :m '>+1<cr>gv=gv
vnoremap <M-k> :m '<-2<cr>gv=gv

" open a terminal in a vertical window
nnoremap <silent> <leader>t :vert term<cr><c-w>:exe "vertical resize " . (winwidth(0) * 3/4)<CR>
" set shell=bash\ -l

" Terminal Key commands
" open a terminal window in a horizontal split from a terminal window
tnoremap <silent> <leader>t :term<cr>
tnoremap <silent> x<tab> exit<cr>
tnoremap <silent> n<tab> npm run dev<cr>
tnoremap <silent> r<tab> npm run dev:react<cr>
tnoremap <silent> lw<tab> lein run web<cr>
tnoremap <silent> lf<tab> lein figwheel<cr>

nnoremap <silent> <leader>v :vert sb 

" Save the file
noremap <silent> <leader>s :update<cr>

" Quit everything
noremap <silent> <leader>q :qa<cr>

" Activate markdown preview
noremap <silent> <C-p> :MarkdownPreview<cr>

" Folding
set foldmethod=syntax
set foldlevelstart=99
" Folding in JS is a little wonky; use `indent` instead of `syntax`
autocmd BufEnter *.js,*.jsx,*.scss set foldmethod=indent

" Sometimes syntax highlighting goes, so create a shorttcut that forces a
" redraw
nnoremap <silent> <leader>C :syntax sync fromstart<cr>

" add a marker to know where the
" 80th character is for markdown files
autocmd BufEnter *.md,*.markdown set colorcolumn=80
" also automatically turn on spellcheck
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown setlocal spell
" and enable all words for autocomplete
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown  set complete+=kspell

" For use with control p
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Open NERDTree automatically unless there's a filename arg
" au vimenter * if !argc() | NERDTreeToggle | endif

" Close NERDTree when it opens a file
" let NERDTreeQuitOnOpen = 1
" ensure line numbers are off for NERDTree
let g:NERDTreeShowLineNumbers=0

" parinfer toggle
nnoremap <Leader>) :call ParinferToggle()<cr>
function! ParinferToggle()
    if g:parinfer_enabled == 1
        let g:parinfer_enabled = 0
        echom "Parinfer disabled"
    else
        let g:parinfer_enabled = 1
        echom "Parinfer enabled"
    endif
endfunction

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufNewFile,BufFilePre,BufRead *.prima set filetype=clojure
" au BufRead *.html set filetype=htmlm4

" Insert shortcuts
:iab rtnow <c-r>=strftime("%T") <cr>

:iab 2dy <c-r>=strftime("%a, %b %d %Y") <cr>

:iab utcnow <c-r>=strftime("%Y-%m-%dT%H:%M:%z") <cr>

" Autocorrect my common typos
:iab teh the
:iab ahve have
:iab tempalte template

" Replacing with auto-pairs
" ino " ""<left>
" ino ' ''<left>
" ino ` ``<left>
" ino ( ()<left>
" ino [ []<left>
" ino { {}<left>
" ino < <><left>

let g:elm_format_autosave = 1

" shortcuts to move between buffers
" adding `hide` ensures that undos aren't lost
" by hiding the buffer instead of unloading it
nmap <leader>l :hide bnext<cr>
nmap <leader>h :hide bprevious<cr>

" Close current buffer, then move to the next one
nmap <leader>w :<c-u>bn <bar> bd #<cr>

" Close all Buffers except the current one
nmap <leader>W :%bd <bar> e# <cr>

" nmap <C-[> 

" ale config
let g:ale_echo_msg_error_str = "\uf05e"
let g:ale_echo_msg_warning_str = "\uf071"
let g:ale_echo_msg_format = ' %severity%  %linter% %severity%  %s'
let g:ale_list_window_size = 5

" turn off indenting style from the svelte plugin for svelte files
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <leader>af :ALEFix <cr>

" Toggle the NERDTree window
nnoremap <leader>x :NERDTreeToggle<cr>
" Find the current file in NERDTree, and move the cursor to a consistent spot
nnoremap <leader>X :NERDTreeFind<cr> zz ^ V <Esc>

" Add empty line(s) below cursor
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
" Add empty line(s) above cursor
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>


function! RunInTmux(cmd)
  :execute ":silent !tmux splitw -h '".a:cmd."; read; tmux select-pane -L'"
endfunction
au FileType javascript nnoremap <leader>T :call RunInTmux('node %')<CR>
