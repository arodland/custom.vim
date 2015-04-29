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

let colors_name = "metacosm"


" -----------------------------------------------------------------------------
" Primary (hyper/selected/colored background)
" -----------------------------------------------------------------------------
" Search
hi IncSearch ctermbg=0	 ctermfg=14	
hi Search ctermbg=0	 ctermfg=14	

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
hi DiffText ctermbg=9	 ctermfg=15	 cterm=bold
hi DiffAdd ctermbg=18	 ctermfg=15	
hi DiffChange ctermbg=90	 ctermfg=15	
hi DiffDelete ctermbg=30	 ctermfg=21	 cterm=bold

" Misc
hi Title ctermfg=13	 cterm=bold
hi Question ctermbg=0	 ctermfg=10	 cterm=bold
hi Todo  ctermbg=0	 ctermfg=14	
hi Error ctermbg=9	 ctermfg=15	
hi WildMenu ctermbg=14	 ctermfg=0	


" -----------------------------------------------------------------------------
" Primary (active/code/text/grey background)
" -----------------------------------------------------------------------------
" Normal
"hi Normal ctermbg=237	 ctermfg=15	
hi Normal ctermbg=0	 ctermfg=15	

" Constants
hi Constant ctermbg=0	 ctermfg=217	
hi String ctermbg=0	 ctermfg=217	
hi Character ctermbg=0	 ctermfg=217	
hi Number ctermbg=0	 ctermfg=217	
hi Boolean ctermbg=0	 ctermfg=217	
hi Float ctermbg=0	 ctermfg=217	

" Identifier
hi Identifier ctermbg=0	 ctermfg=87	
hi Function ctermbg=0	 ctermfg=87	

" Statement
hi Statement ctermbg=0	 ctermfg=227	
hi Conditional ctermbg=0	 ctermfg=227	
hi Repeat ctermbg=0	 ctermfg=227	
hi Label ctermbg=0	 ctermfg=227	
hi Operator ctermbg=0	 ctermfg=227	
hi Keyword ctermbg=0	 ctermfg=227	
hi Exception ctermbg=0	 ctermfg=227	

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
hi Special ctermbg=0	 ctermfg=214	
hi SpecialChar ctermbg=0	 ctermfg=214	
hi Tag ctermbg=0	 ctermfg=214	
hi Delimiter ctermbg=0	 ctermfg=214	
hi Debug ctermbg=0	 ctermfg=214	

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
hi MoreMsg ctermbg=0	 ctermfg=29	 cterm=bold
hi WarningMsg ctermbg=0	 ctermfg=21	 cterm=bold
hi ErrorMsg ctermbg=0	 ctermfg=9	 cterm=bold

" Folding
hi Folded ctermbg=0	 ctermfg=243	
hi FoldColumn ctermbg=0	 ctermfg=243	

" Misc
hi Ignore ctermbg=0	 ctermfg=243	
hi NonText ctermbg=0	 ctermfg=243	
hi LineNr ctermbg=0	 ctermfg=243	
hi SpecialKey ctermbg=0	 ctermfg=243	
hi SignColumn ctermbg=0	 ctermfg=243	
hi Directory ctermbg=0	 ctermfg=14	
