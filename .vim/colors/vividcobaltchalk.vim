" Vim color file - vividcobaltchalk
" Generated by http://bytefluent.com/vivify 2021-05-14
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "vividcobaltchalk"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#dadada guibg=#2b2d38 guisp=#2b2d38 gui=NONE ctermfg=253 ctermbg=237 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi EnumerationName -- no settings --
"hi VertSplit -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
"hi rubystringdelimiter -- no settings --
hi IncSearch guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=bold ctermfg=NONE ctermbg=11 cterm=bold
hi SignColumn guifg=#00ffff guibg=#6c6c6c guisp=#6c6c6c gui=NONE ctermfg=14 ctermbg=242 cterm=NONE
hi SpecialComment guifg=#00d700 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Typedef guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi Title guifg=#ff40ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Folded guifg=#d7ffff guibg=#000087 guisp=#000087 gui=NONE ctermfg=195 ctermbg=18 cterm=NONE
hi PreCondit guifg=#87ffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi Include guifg=#87ffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#000000 guisp=#000000 gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi StatusLineNC guifg=#000000 guibg=#a8a8a8 guisp=#a8a8a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi NonText guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#ff6060 guisp=#ff6060 gui=bold ctermfg=NONE ctermbg=9 cterm=bold
hi ErrorMsg guifg=NONE guibg=#c00000 guisp=#c00000 gui=NONE ctermfg=NONE ctermbg=1 cterm=NONE
hi Ignore guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Debug guifg=#00d700 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#a8a8a8 guisp=#a8a8a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi Identifier guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#00d700 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi Todo guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi Special guifg=#00d700 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ffffff guibg=#080808 guisp=#080808 gui=NONE ctermfg=15 ctermbg=232 cterm=NONE
hi StatusLine guifg=#000000 guibg=#ffffff guisp=#ffffff gui=bold ctermfg=NONE ctermbg=15 cterm=bold
hi Label guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#ffffff guibg=#8787ff guisp=#8787ff gui=bold ctermfg=15 ctermbg=105 cterm=bold
hi Search guifg=NONE guibg=#262626 guisp=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi Delimiter guifg=#00d700 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Statement guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi SpellRare guifg=NONE guibg=#c000c0 guisp=#c000c0 gui=NONE ctermfg=NONE ctermbg=5 cterm=NONE
hi Comment guifg=#818eb3 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Character guifg=#008787 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Float guifg=#008787 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Number guifg=#008787 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Boolean guifg=#008787 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Operator guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#262626 guisp=#262626 gui=underline ctermfg=NONE ctermbg=235 cterm=underline
hi TabLineFill guifg=#9e9e9e guibg=#626262 guisp=#626262 gui=underline ctermfg=247 ctermbg=241 cterm=underline
hi Question guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ff6060 guibg=NONE guisp=NONE gui=NONE ctermfg=9 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#262626 guisp=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi DiffDelete guifg=#8080ff guibg=#008080 guisp=#008080 gui=NONE ctermfg=12 ctermbg=6 cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi CursorColumn guifg=NONE guibg=#262626 guisp=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi Define guifg=#87ffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi Function guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#d7ffff guibg=#000087 guisp=#000087 gui=NONE ctermfg=195 ctermbg=18 cterm=NONE
hi PreProc guifg=#87ffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi Visual guifg=NONE guibg=#626262 guisp=#626262 gui=NONE ctermfg=NONE ctermbg=241 cterm=NONE
hi MoreMsg guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi SpellCap guifg=NONE guibg=#0000c0 guisp=#0000c0 gui=NONE ctermfg=NONE ctermbg=4 cterm=NONE
hi Exception guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Type guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#c000c0 guisp=#c000c0 gui=NONE ctermfg=NONE ctermbg=5 cterm=NONE
hi Cursor guifg=#000000 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi SpellLocal guifg=NONE guibg=#008080 guisp=#008080 gui=NONE ctermfg=NONE ctermbg=6 cterm=NONE
hi Error guifg=#ffffff guibg=#c00000 guisp=#c00000 gui=NONE ctermfg=15 ctermbg=1 cterm=NONE
hi PMenu guifg=#ffffff guibg=#0000d7 guisp=#0000d7 gui=bold ctermfg=15 ctermbg=20 cterm=bold
hi SpecialKey guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Constant guifg=#53e0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE
hi Tag guifg=#00d700 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi String guifg=#5fff00 guibg=NONE guisp=NONE gui=NONE ctermfg=82 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi MatchParen guifg=NONE guibg=#0000d7 guisp=#0000d7 gui=NONE ctermfg=NONE ctermbg=20 cterm=NONE
hi Repeat guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=#c00000 guisp=#c00000 gui=NONE ctermfg=NONE ctermbg=1 cterm=NONE
hi Directory guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Structure guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi Macro guifg=#87ffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi Underlined guifg=#5fd7ff guibg=NONE guisp=NONE gui=underline ctermfg=81 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#0000c0 guisp=#0000c0 gui=NONE ctermfg=NONE ctermbg=4 cterm=NONE
hi TabLine guifg=#9e9e9e guibg=#080808 guisp=#080808 gui=underline ctermfg=247 ctermbg=232 cterm=underline
hi cursorim guifg=#000000 guibg=#918c8d guisp=#918c8d gui=NONE ctermfg=NONE ctermbg=246 cterm=NONE
hi keyword guifg=#FFDE00 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi type guifg=#84A7C1 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi normal guifg=#ffffff guibg=#0B1022 guisp=#0B1022 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi constant guifg=#CAFE1E guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE