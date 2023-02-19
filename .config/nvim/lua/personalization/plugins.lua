local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('preservim/nerdtree', {on = 'NERDTreeToggle'})

Plug 'tpope/vim-fugitive'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'leafgarland/typescript-vim'
Plug 'evanleck/vim-svelte'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'elmcast/elm-vim'
Plug 'w0rp/ale'
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug('prettier/vim-prettier', { ['do'] = 'yarn install --frozen-lockfile --production', ['branch'] = 'release/0.x' })
-- Intelligently pair common character sets
-- Plug 'jiangmiao/auto-pairs'
-- Shortcuts to split and join blocks of code
Plug 'AndrewRadev/splitjoin.vim'
-- Fade out non-focused splits
-- Plug 'TaDaa/vimade'
-- Plug 'editorconfig/editorconfig-vim'
-- UltiSnips
Plug 'SirVer/ultisnips'
-- Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

-- colorschemes
-- Plug 'gertjanreynaert/cobalt2-vim-theme'
-- Plug 'GlennLeo/cobalt2'
-- Plug 'jarodl/cobalt.vim'
Plug 'dterei/VimCobaltColourScheme'
Plug 'wmvanvliet/vim-blackboard'
Plug 'fenetikm/falcon'
Plug 'Zabanaa/neuromancer.vim'
Plug 'haishanh/night-owl.vim'

Plug 'szw/vim-maximizer'

-- for Clojure dev
Plug 'tpope/vim-fireplace'
-- Follow installation instructions here
-- https://github.com/venantius/vim-cljfmt#installation
Plug 'venantius/vim-cljfmt'
-- Plug 'guns/vim-sexp'
-- Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'eraserhd/parinfer-rust'

-- Change background colors of color values to reflect the value in code
Plug 'ap/vim-css-color'
-- Allow easy conversions between cases, including snake, kebab, camel, etc
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sleuth'

-- Fuzzy Find
Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end })
Plug 'junegunn/fzf.vim'

-- telescope
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {['branch'] = '0.1.x'})
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

vim.call('plug#end')
