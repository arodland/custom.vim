syn on
syn sync fromstart
set ts=2 sts=2 sw=2 sr et
set tw=0
set noai cindent
set mouse=a
set viminfo='20,<100,s30,h
set km=startsel
set showcmd ruler
set modeline
set wildmode=longest,list,full
set wildmenu
set autowrite
set laststatus=2
set fillchars=vert:\ ,fold:—,diff:\ 
set foldtext=substitute(foldtext(),\"-\",\"—\",\"g\")
set guicursor=

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
