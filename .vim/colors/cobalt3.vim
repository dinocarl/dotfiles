" Vim color file - cobalt3
" Generated by http://bytefluent.com/vivify 2021-08-28
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "cobalt3"

"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#ffffff guibg=#193549 guisp=#193549 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi TabLineSel -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi twigtagdelim -- no settings --
"hi htmlh1 -- no settings --
"hi javascriptbraces -- no settings --
"hi htmltitle -- no settings --
"hi rubyinterpolationdelimiter -- no settings --
"hi htmllink -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#193549 guibg=#35d900 guisp=#35d900 gui=NONE ctermfg=23 ctermbg=76 cterm=underline
hi SpecialComment guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Typedef guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Title guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Folded guifg=#0088ff guibg=#193549 guisp=#193549 gui=NONE ctermfg=33 ctermbg=23 cterm=NONE
hi PreCondit guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Include guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Float guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#ffffff guibg=#5c707e guisp=#5c707e gui=NONE ctermfg=15 ctermbg=66 cterm=NONE
hi NonText guifg=#4e4e4e guibg=#253f52 guisp=#253f52 gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
hi DiffText guifg=#ffffff guibg=#204a87 guisp=#204a87 gui=bold ctermfg=15 ctermbg=24 cterm=bold
hi ErrorMsg guifg=#f8f8f8 guibg=#800f00 guisp=#800f00 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi Debug guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#193549 guisp=#193549 gui=NONE ctermfg=196 ctermbg=196 cterm=NONE
hi Identifier guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Todo guifg=#0088ff guibg=NONE guisp=NONE gui=bold,italic ctermfg=33 ctermbg=NONE cterm=bold
hi Special guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi LineNr guifg=#8c9aa4 guibg=#193549 guisp=#193549 gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffffff guibg=#5c707e guisp=#5c707e gui=bold ctermfg=15 ctermbg=66 cterm=bold
hi Label guifg=#35d900 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=NONE guibg=#0050a4 guisp=#0050a4 gui=NONE ctermfg=NONE ctermbg=25 cterm=NONE
hi Search guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=15 ctermbg=239 cterm=underline
hi Delimiter guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Statement guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Comment guifg=#a3bcd1 guibg=NONE guisp=NONE gui=italic ctermfg=246 ctermbg=NONE cterm=NONE
hi Character guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi Number guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi Boolean guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi Operator guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#1d425d guisp=#1d425d gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE
hi WarningMsg guifg=#f8f8f8 guibg=#800f00 guisp=#800f00 gui=NONE ctermfg=15 ctermbg=3 cterm=NONE
hi DiffDelete guifg=#880b0f guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#1d425d guisp=#1d425d gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi Define guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Function guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi PreProc guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Visual guifg=NONE guibg=#0050a4 guisp=#0050a4 gui=NONE ctermfg=NONE ctermbg=25 cterm=NONE
hi VertSplit guifg=#5c707e guibg=#5c707e guisp=#5c707e gui=NONE ctermfg=66 ctermbg=66 cterm=NONE
hi Exception guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Type guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#ffffff guibg=#1c4068 guisp=#1c4068 gui=NONE ctermfg=15 ctermbg=17 cterm=NONE
hi Cursor guifg=#193549 guibg=#ffc600 guisp=#ffc600 gui=NONE ctermfg=23 ctermbg=220 cterm=NONE
hi PMenu guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#ffc600 guibg=#30495b guisp=#30495b gui=NONE ctermfg=220 ctermbg=23 cterm=NONE
hi Constant guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi Tag guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi String guifg=#35d900 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#8c9aa4 guisp=#8c9aa4 gui=NONE ctermfg=NONE ctermbg=109 cterm=NONE
hi MatchParen guifg=#ff9d00 guibg=NONE guisp=NONE gui=underline ctermfg=214 ctermbg=NONE cterm=underline
hi Repeat guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Directory guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi Structure guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Macro guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi DiffAdd guifg=#ffffff guibg=#438613 guisp=#438613 gui=bold ctermfg=15 ctermbg=64 cterm=bold
hi htmlarg guifg=#9effff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi javascriptfunction guifg=#ff80e1 guibg=NONE guisp=NONE gui=NONE ctermfg=212 ctermbg=NONE cterm=NONE
hi erubycomment guifg=#0088ff guibg=NONE guisp=NONE gui=italic ctermfg=33 ctermbg=NONE cterm=NONE
hi htmltagn guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi twigblockname guifg=#cccccc guibg=#0d3a58 guisp=#0d3a58 gui=NONE ctermfg=252 ctermbg=23 cterm=NONE
hi rubyclass guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi rubyrailsarmethod guifg=#ffb054 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi htmlspecialchar guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi rubyexception guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi csscommonattr guifg=#eb939a guibg=NONE guisp=NONE gui=NONE ctermfg=174 ctermbg=NONE cterm=NONE
hi rubyescape guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi rubyfunction guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi rubyrailsuserclass guifg=#80ffbb guibg=NONE guisp=NONE gui=NONE ctermfg=121 ctermbg=NONE cterm=NONE
hi cssbraces guifg=#e1efff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi twigstring guifg=#35d900 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi rubyglobalvariable guifg=#cccccc guibg=#0d3a58 guisp=#0d3a58 gui=NONE ctermfg=252 ctermbg=23 cterm=NONE
hi htmltagname guifg=#9effff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi rubyblockparameter guifg=#cccccc guibg=#0d3a58 guisp=#0d3a58 gui=NONE ctermfg=252 ctermbg=23 cterm=NONE
hi erubyrailsmethod guifg=#ffb054 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi javascriptrailsfunction guifg=#ffb054 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi htmlspecialtagname guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=#80ffc2 guibg=NONE guisp=NONE gui=NONE ctermfg=122 ctermbg=NONE cterm=NONE
hi javascriptfuncname guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi csscolor guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi rubyconstant guifg=#80ffbb guibg=NONE guisp=NONE gui=NONE ctermfg=121 ctermbg=NONE cterm=NONE
hi rubyrailsmethod guifg=#ffb054 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi cursorlinenr guifg=#8c9aa4 guibg=#1d425d guisp=#1d425d gui=NONE ctermfg=109 ctermbg=233 cterm=NONE
hi erubydelimiter guifg=#e1efff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi rubypseudovariable guifg=#ff80e1 guibg=NONE guisp=NONE gui=NONE ctermfg=212 ctermbg=NONE cterm=NONE
hi rubyrailsarassociationmethod guifg=#ffb054 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyrailsrendermethod guifg=#ffb054 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyinstancevariable guifg=#ff80e1 guibg=NONE guisp=NONE gui=NONE ctermfg=212 ctermbg=NONE cterm=NONE
hi rubyclassvariable guifg=#cccccc guibg=#0d3a58 guisp=#0d3a58 gui=NONE ctermfg=252 ctermbg=23 cterm=NONE
hi rubycontrol guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi yamlalias guifg=#cccccc guibg=#0d3a58 guisp=#0d3a58 gui=NONE ctermfg=252 ctermbg=23 cterm=NONE
hi yamldocumentheader guifg=#35d900 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi csspseudoclassid guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi colorcolumn guifg=NONE guibg=#526776 guisp=#526776 gui=NONE ctermfg=NONE ctermbg=66 cterm=NONE
hi cssvaluelength guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi rubystringdelimiter guifg=#35d900 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi cssfunctionname guifg=#ffb054 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi yamlanchor guifg=#cccccc guibg=#0d3a58 guisp=#0d3a58 gui=NONE ctermfg=252 ctermbg=23 cterm=NONE
hi rubyregexp guifg=#80ffc2 guibg=NONE guisp=NONE gui=NONE ctermfg=122 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#ff628c guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi cssurl guifg=#cccccc guibg=#0d3a58 guisp=#0d3a58 gui=NONE ctermfg=252 ctermbg=23 cterm=NONE
hi rubyinclude guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi cssclassname guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi yamlkey guifg=#ffc600 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi twigvariable guifg=#eeee80 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi rubyoperator guifg=#ff9d00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi htmlendtag guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE