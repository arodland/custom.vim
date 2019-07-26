call lh#local_vimrc#munge('whitelist', $HOME.'/code')

let g:airline_skip_empty_sections = 1

let perl_fold = 1
let perl_fold_blocks = 1
let perl_include_pod = 1
let perl_extended_vars = 1
let perl_want_scope_in_variables = 1

let g:go_fmt_autosave = 0 " provided by custom.vim/plugin/gofmt instead
let g:go_dispatch_enabled = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_auto_type_info = 1
let g:go_fmt_fail_silently = 1
let g:go_term_enabled = 1
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'

filetype plugin indent on

vmap ,, ""d:let[a,b]=[@",@"]\|let a=substitute(tolower(a),"[^a-z]","_","g")\|let @"="<a href=\"#".a."\">".b."</a>"<Esc>P

command! -range=% -nargs=* Tidy <line1>,<line2>! 
        \perltidy -l=120 -i=2 -ci=2 -ole=unix -nola -nwls="**" -nwrs="**" -olc -ce -bar <args>

command! Sign %!gpg --clearsign

" set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](local|fixtures|\.git|\.svn)',
    \ }

nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_singleclick=1
"let g:tagbar_autopreview=1
"autocmd VimEnter * nested :call tagbar#autoopen(1)
"autocmd FileType * nested :call tagbar#autoopen(0)
"autocmd BufEnter * nested :call tagbar#autoopen(0)

let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_insertion=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ["go", "govet"]

let g:ale_linters = {'go': ['goimports', 'go build'], 'perl': ['perl']}
let g:ale_open_list = 0
let g:ale_go_bingo_executable = 'gopls'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

