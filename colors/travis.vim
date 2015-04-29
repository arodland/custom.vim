" Vim color file
" Maintainer: Travis Beck <travis@brontosaurus.net>
" Last Change:
" URL:

set background=light
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "travis"

hi Normal ctermfg=239 guifg=#4e4e4e

" as light of a gray that's readable for comments
hi Comment ctermfg=144 guifg=#afaf87

" as bright of a red as is possible for constants
hi Constant ctermfg=160 guifg=#ff0000
hi link String Constant
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Constant

" nice cool blue for identifiers
hi Identifier ctermfg=30 guifg=#008787

" gray for now - perhaps reconsider?
hi Function ctermfg=247 guifg=#87afaf

" lightish yellow-green to represent the lightest part of the light/dark spectrum - perhaps a bit too yellow?
hi PreProc ctermfg=185 guifg=#d7d75f
hi link Define PreProc
hi link Include PreProc
hi link Macro PreProc
hi link PreCondit PreProc

hi Special ctermfg=152 guifg=#afd7d7
hi link Debug Special
hi link Delimiter Special
hi link SpecialChar Special
hi link SpecialComment Special
hi link Tag Special

" bold and differentiatable gray
hi Statement cterm=bold ctermfg=248 gui=bold guifg=#d0d0d0
hi link Repeat Statement
hi link Label Statement
hi link Keyword Statement
hi link Exception Statement

hi Conditional ctermfg=244 gui=bold guifg=#808080
hi Operator ctermfg=24 guifg=#005f87

hi Type ctermfg=66 guifg=none
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

" search groups
hi Search ctermbg=227 guibg=#ffff5f
hi IncSearch cterm=reverse gui=reverse

" diff groups
hi DiffAdd ctermbg=81 guibg=#5fd7ff
hi DiffChange ctermbg=225 guibg=#ffd7ff
hi DiffDelete ctermfg=12 ctermbg=159 guifg=blue guibg=#afffff
hi DiffText cterm=bold ctermbg=211 gui=bold guibg=#ff87af

" cursor groups
"hi Cursor ctermfg=white ctermbg=black guifg=white guibg=black
hi CursorColumn guibg=gray90
hi CursorIM gui=None
hi CursorLine guibg=gray90

hi Visual ctermbg=255 guibg=#eeeeee
hi VisualNOS gui=bold,underline
"
" status line and split lines
hi StatusLine cterm=none ctermfg=196 ctermbg=255 gui=none guifg=#ff0000 guibg=#eeeeee
hi StatusLineNC cterm=none ctermfg=245 ctermbg=255 gui=none guifg=#8a8a8a guibg=#eeeeee
hi VertSplit cterm=none ctermfg=245 ctermbg=255 gui=none guifg=#8a8a8a guibg=#eeeeee

hi NonText ctermfg=31 guifg=#0087af

" just boldify the parenthese, to make it slightly clearer, don't knock me over the head or anything
hi clear MatchParen
hi MatchParen cterm=bold gui=bold

" stuff I haven't gotten around to defining yet
"hi Directory guifg=blue
"hi Error guifg=white guibg=red
"hi ErrorMsg guifg=white guibg=red
"hi FoldColumn guifg=darkblue guibg=grey
"hi Folded guifg=darkblue guibg=lightgrey
"hi Ignore guifg=white
"hi LineNr guifg=brown
"hi Menu		
"hi ModeMsg gui=bold
"hi MoreMsg gui=bold guifg=seagreen
"hi Pmenu guibg=plum1
"hi PmenuSbar guibg=grey
"hi PmenuSel guibg=grey
"hi PmenuThumb gui=reverse
"hi Question gui=bold guifg=seagreen
"hi Scrollbar	
"hi SignColumn guifg=darkblue guibg=grey
"hi SpecialKey guifg=blue
"hi SpellBad gui=undercurl
"hi SpellCap gui=undercurl
"hi SpellLocal gui=undercurl
"hi SpellRare gui=undercurl
"hi TabLine gui=underline guibg=lightgrey
"hi TabLineFill gui=reverse
"hi TabLineSel gui=bold
"hi Title gui=bold guifg=magenta
"hi Todo guifg=blue guibg=yellow
"hi Tooltip		
"hi Underlined gui=underline guifg=slateblue
"hi WarningMsg guifg=red
"hi WildMenu guifg=black guibg=yellow
