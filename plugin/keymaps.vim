if has("nvim")
  nnoremap <silent> <F7> :Telescope<CR>
  nnoremap <silent> <F8> :CHADopen<CR>
  nnoremap <silent> <F9> :SymbolsOutline<CR>
else
  nnoremap <silent> <F8> :NERDTree<CR>
  nnoremap <silent> <F9> :Vista!!<CR>
  nnoremap <silent> <C-F> :Vista finder<CR>
endif
