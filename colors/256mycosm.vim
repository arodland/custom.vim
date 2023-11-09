" Vim color file
" Maintainer: Robert Melton ( vim at metacosm dot dhs dot org )
" Last Change: 2004 June 19th


" -----------------------------------------------------------------------------
" This color scheme uses a dark grey background.
" This theme, based on evening (with some input from Torte) is designed to 
" seperate active text (code) from background/line numbers/folds/listchars by 
" having different background colors on the non-code and the code (just 
" slightly).  If you look at the screenshot below, you will get the idea.  
" All non-code(include indents) and string literals have a black background 
" while code has a very dark grey background.
" -----------------------------------------------------------------------------
set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "256mycosm"


" -----------------------------------------------------------------------------
" Primary (hyper/selected/colored background)
" -----------------------------------------------------------------------------
" Search
hi IncSearch ctermbg=0 ctermfg=14 guibg=grey6 guifg=cyan
hi Search ctermbg=0 ctermfg=21 guibg=grey6 guifg=#0000ff

" Visual
hi Visual ctermbg=0 ctermfg=11 guibg=grey6 guifg=yellow
hi VisualNOS ctermbg=0 ctermfg=11 cterm=underline guibg=grey6 guifg=yellow gui=underline

" Borders
hi StatusLine ctermbg=0 ctermfg=15 guibg=grey6 guifg=white
hi StatusLineNC ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45
hi VertSplit ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45

" Cursors
hi Cursor ctermbg=15 ctermfg=0 guibg=white guifg=black
hi lCursor ctermbg=15 ctermfg=0 guibg=white guifg=black

" Diff
hi DiffText ctermbg=9 ctermfg=0 cterm=bold guibg=red guifg=white gui=bold
hi DiffAdd ctermbg=18 ctermfg=15 guibg=darkblue guifg=white
hi DiffChange ctermbg=5 ctermfg=15 guibg=darkmagenta guifg=white
hi DiffDelete ctermbg=26 ctermfg=21 cterm=bold guibg=darkcyan guifg=blue gui=bold

" Misc
hi Title ctermfg=15 cterm=bold guifg=white gui=bold
hi Question ctermbg=0 ctermfg=2 cterm=bold guibg=grey6 guifg=green gui=bold
hi Todo ctermbg=0 ctermfg=21 guibg=grey6 guifg=blue
hi Error ctermbg=202 ctermfg=0 guibg=#ff5500 guifg=white
hi WildMenu ctermbg=21 ctermfg=0 guibg=blue guifg=black

" Popup / Autocomplete
hi Pmenu ctermbg=67 ctermfg=15 guibg=steelblue guifg=white
hi PmenuSel ctermbg=75 ctermfg=15 guibg=steelblue1 guifg=white

" -----------------------------------------------------------------------------
" Primary (active/code/text/grey background)
" -----------------------------------------------------------------------------
" Normal
hi Normal ctermbg=0 ctermfg=15 guibg=grey6 guifg=white

" Constants
hi Constant ctermfg=203 guifg=#ff5555
hi String ctermfg=203 guifg=#ff5555
hi Character ctermfg=203 guifg=#ff5555
hi Number ctermfg=203 guifg=#ff5555
hi Boolean ctermfg=203 guifg=#ff5555
hi Float ctermfg=203 guifg=#ff5555

" Identifier
hi Identifier ctermfg=123 guifg=#88ffff
hi Function ctermfg=123 guifg=#88ffff

" Statement
hi Statement ctermfg=227 guifg=#ffff5f gui=none
hi Conditional ctermfg=227 guifg=#ffff5f
hi Repeat ctermfg=227 guifg=#ffff5f
hi Label ctermfg=227 guifg=#ffff5f
hi Operator ctermfg=227 guifg=#ffff5f
hi Keyword ctermfg=227 guifg=#ffff5f gui=none
hi Exception ctermfg=227 guifg=#ffff5f

" PreProc
hi PreProc ctermfg=213 guifg=#ff88ff
hi Include ctermfg=213 guifg=#ff88ff
hi Define ctermfg=213 guifg=#ff88ff
hi Macro ctermfg=213 guifg=#ff88ff
hi PreCondit ctermfg=213 guifg=#ff88ff

" Type
hi Type ctermfg=83 guifg=#5fff5f gui=none
hi StorageClass ctermfg=83 guifg=#5fff5f
hi Structure ctermfg=83 guifg=#5fff5f
hi Typedef ctermfg=83 guifg=#5fff5f

" Special
hi Special ctermfg=11 guifg=yellow
hi SpecialChar ctermfg=11 guifg=yellow
hi Tag ctermfg=11 guifg=yellow
hi Delimiter ctermfg=11 guifg=yellow
hi Debug ctermfg=11 guifg=yellow

" Misc
hi Underlined ctermfg=227 cterm=underline guifg=#ffff5f gui=underline


" -----------------------------------------------------------------------------
" Secondary (inactive/black background)
" -----------------------------------------------------------------------------
" Comments
hi Comment ctermbg=0 ctermfg=111 guibg=grey6 guifg=#88aaff
hi SpecialComment ctermbg=0 ctermfg=111 cterm=underline guibg=grey6 guifg=#88afff gui=underline

" Messages
hi ModeMsg ctermbg=0 ctermfg=15 cterm=bold guibg=grey6 guifg=white gui=bold
hi MoreMsg ctermbg=0 ctermfg=237 cterm=bold guibg=grey6 guifg=grey23 gui=bold
hi WarningMsg ctermbg=0 ctermfg=21 cterm=bold guibg=grey6 guifg=blue gui=bold
hi ErrorMsg ctermbg=0 ctermfg=11 cterm=bold guibg=grey6 guifg=red gui=bold

" Folding
hi Folded ctermbg=17 ctermfg=Yellow guibg=#00005f guifg=Yellow
hi FoldColumn ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45

" Misc
hi Ignore ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45
hi NonText ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45
hi LineNr ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45
hi SpecialKey ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45
hi SignColumn ctermbg=0 ctermfg=243 guibg=grey6 guifg=grey45
hi Directory ctermbg=0 ctermfg=21 guibg=grey6 guifg=blue
