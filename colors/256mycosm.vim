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
hi IncSearch ctermbg=0	 ctermfg=14	
hi Search ctermbg=0	 ctermfg=21	

" Visual 
hi Visual ctermbg=0	 ctermfg=11	
hi VisualNOS ctermbg=0	 ctermfg=11	 cterm=underline

" Borders
hi StatusLine ctermbg=0	 ctermfg=15	
hi StatusLineNC ctermbg=0	 ctermfg=243	
hi VertSplit ctermbg=0	 ctermfg=243	

" Cursors
hi Cursor ctermbg=15	 ctermfg=0	
hi lCursor ctermbg=15	 ctermfg=0	

" Diff
hi DiffText ctermbg=11	 ctermfg=0	 cterm=bold
hi DiffAdd ctermbg=18	 ctermfg=15	
hi DiffChange ctermbg=245	 ctermfg=15	
hi DiffDelete ctermbg=18	 ctermfg=21	 cterm=bold

" Misc
hi Title ctermfg=15	 cterm=bold
hi Question ctermbg=0	 ctermfg=0	 cterm=bold
hi Todo  ctermbg=0	 ctermfg=21	
hi Error ctermbg=11	 ctermfg=0
hi WildMenu ctermbg=21	 ctermfg=0	


" -----------------------------------------------------------------------------
" Primary (active/code/text/grey background)
" -----------------------------------------------------------------------------
" Normal
hi Normal ctermbg=0	 ctermfg=15	

" Constants
hi Constant ctermbg=0	 ctermfg=9	
hi String ctermbg=0	 ctermfg=9	
hi Character ctermbg=0	 ctermfg=9	
hi Number ctermbg=0	 ctermfg=9	
hi Boolean ctermbg=0	 ctermfg=9	
hi Float ctermbg=0	 ctermfg=9	

" Identifier
hi Identifier ctermbg=0	 ctermfg=123
hi Function ctermbg=0	 ctermfg=123

" Statement
hi Statement ctermbg=0	 ctermfg=Yellow
hi Conditional ctermbg=0	 ctermfg=Yellow
hi Repeat ctermbg=0	 ctermfg=Yellow	
hi Label ctermbg=0	 ctermfg=Yellow	
hi Operator ctermbg=0	 ctermfg=Yellow	
hi Keyword ctermbg=0	 ctermfg=Yellow	
hi Exception ctermbg=0	 ctermfg=Yellow	

" PreProc
hi PreProc ctermbg=0	 ctermfg=213	
hi Include ctermbg=0	 ctermfg=213	
hi Define ctermbg=0	 ctermfg=213	
hi Macro ctermbg=0	 ctermfg=213	
hi PreCondit ctermbg=0	 ctermfg=213	

" Type
hi Type ctermbg=0	 ctermfg=83	
hi StorageClass ctermbg=0	 ctermfg=83	
hi Structure ctermbg=0	 ctermfg=83	
hi Typedef ctermbg=0	 ctermfg=83	

" Special
hi Special ctermbg=0	 ctermfg=11	
hi SpecialChar ctermbg=0	 ctermfg=11	
hi Tag ctermbg=0	 ctermfg=11	
hi Delimiter ctermbg=0	 ctermfg=11	
hi Debug ctermbg=0	 ctermfg=11	

" Misc
hi Underlined ctermbg=0	 ctermfg=227	 cterm=underline


" -----------------------------------------------------------------------------
" Secondary (inactive/black background)
" -----------------------------------------------------------------------------
" Comments
hi Comment ctermbg=0	 ctermfg=111	
hi SpecialComment ctermbg=0	 ctermfg=111	 cterm=underline

" Messages
hi ModeMsg ctermbg=0	 ctermfg=15	 cterm=bold
hi MoreMsg ctermbg=0	 ctermfg=237	 cterm=bold
hi WarningMsg ctermbg=0	 ctermfg=21	 cterm=bold
hi ErrorMsg ctermbg=0	 ctermfg=11	 cterm=bold

" Folding
hi Folded ctermbg=17	 ctermfg=Yellow
hi FoldColumn ctermbg=0	 ctermfg=243	

" Misc
hi Ignore ctermbg=0	 ctermfg=243	
hi NonText ctermbg=0	 ctermfg=243	
hi LineNr ctermbg=0	 ctermfg=243	
hi SpecialKey ctermbg=0	 ctermfg=243	
hi SignColumn ctermbg=0	 ctermfg=243	
hi Directory ctermbg=0	 ctermfg=21	
