set nocompatible              " be iMproved, required
filetype off                  " required
set ttimeout
set ttimeoutlen=50

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'preservim/nerdtree'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" "Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Intelligently pair common character sets
" Plugin 'jiangmiao/auto-pairs'

" Shortcuts to split and join blocks of code
Plugin 'AndrewRadev/splitjoin.vim'

" Fade out non-focused splits
Plugin 'TaDaa/vimade'

Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'isRuslan/vim-es6'

" For TypeScript
Plugin 'leafgarland/typescript-vim'

" Svelte
Plugin 'evanleck/vim-svelte'

" UltiSnips
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Enable airline plugin
Plugin 'vim-airline/vim-airline'

" Enable devicons
Plugin 'ryanoasis/vim-devicons'

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
Plugin 'elmcast/elm-vim'

" for eslint
Plugin 'w0rp/ale'
Plugin 'editorconfig/editorconfig-vim'

" cobalt2 colorscheme
Plugin 'gertjanreynaert/cobalt2-vim-theme'
" blackboard colorscheme
Plugin 'wmvanvliet/vim-blackboard'
Plugin 'jonathanfilip/vim-lucius'


" Markdown previewer
" After plugin install, make sure to
" cd ~/.vim/bundle/markdown-preview.nvim/app && yarn
Plugin 'iamcco/markdown-preview.nvim'

" vim surround
Plugin 'tpope/vim-surround'

" comments
Plugin 'tpope/vim-commentary'

" Session management
Plugin 'tpope/vim-obsession'
Plugin 'dhruvasagar/vim-prosession'
let g:sessions_dir = '~/.vim/sessions'
let g:prosession_dir = '~/.vim/sessions'

" for Clojure dev
Plugin 'tpope/vim-fireplace'
" Follow installation instructions here
" https://github.com/venantius/vim-cljfmt#installation
Plugin 'venantius/vim-cljfmt'
" Plugin 'guns/vim-sexp'
" Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'eraserhd/parinfer-rust'

" Code Formatting
Plugin 'prettier/vim-prettier'
" Change background colors of color values to reflect the value in code
Plugin 'ap/vim-css-color'
" Figure out whitespace for the file
Plugin 'tpope/vim-sleuth'
" Allow easy conversions between cases, including snake, kebab, camel, etc
Plugin 'tpope/vim-abolish'

" Fuzzy Find
set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ---

execute pathogen#infect()
" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
   call webdevicons#refresh()
 endif

colorscheme cobalt2

syntax on
" filetype plugin indent on
set splitright
set splitbelow
set diffopt+=vertical
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
  autocmd BufEnter NERD_* set norelativenumber
" augroup END

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
noremap <leader>r :%s///g<Left><Left><Left>
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

" replay q macro with Q
nnoremap Q @q

" Folding
set foldmethod=syntax
set foldlevelstart=99
" Folding in JS is a little wonky; use `indent` instead of `syntax`
autocmd BufEnter *.js,*.jsx,*.scss set foldmethod=indent

" Sometimes syntax highlighting goes,
" create a shorttcut that forces a redraw
nnoremap <silent> <leader>C :syntax sync fromstart<cr>

" add a marker to know where the
" 80th character is for markdown files
autocmd BufEnter *.md,*.markdown set colorcolumn=80
" also automatically turn on spellcheck
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown setlocal spell
" and enable all words for autocomplete
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown  set complete+=kspell
" color an extra bash file as bash
au BufReadPost *.bash_extra set syntax=bash

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

" toggle colorschemes
nnoremap <Leader>b :call ToggleColors()<cr>
function ToggleColors()
    if (g:colors_name == "cobalt2")
        colorscheme blackboard
    else
        colorscheme cobalt2
    endif
endfunction

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" au BufRead *.html set filetype=htmlm4

" Insert shortcuts
:iab rtnow <c-r>=strftime("%T") <cr>

:iab 2dy <c-r>=strftime("%a, %b %d %Y") <cr>

:iab utcnow <c-r>=strftime("%Y-%m-%dT%H:%M:%z") <cr>

" Autocorrect my common typos
:iab teh the
:iab ahve have
:iab tempalte template

" Special character sequence to insert 2 carriage returns
" and place the cursor in insert mode at the end of the first
inoremap \; <Enter><Esc>O
nnoremap <leader>; <Enter><Esc>O

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

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <leader>af :ALEFix<cr>

" Toggle the NERDTree window
nnoremap <leader>x :NERDTreeToggle<cr>
" Find the current file in NERDTree
nnoremap <leader>X :NERDTreeFind<cr>zz^
" Perform a find in NERDTree
" nnoremap <leader>r :%Eval<cr>

" Add empty line(s) below cursor
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
" Add empty line(s) above cursor
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

" Toggle relative line numbers
nnoremap <leader>N :set relativenumber!<cr>
