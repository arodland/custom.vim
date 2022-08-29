if has("nvim")
  nnoremap <silent> <F7> :Telescope<CR>
  nnoremap <silent> <F19> :Telescope resume<CR>
  nnoremap <silent> <F8> :CHADopen<CR>
  nnoremap <silent> <F9> :SymbolsOutline<CR>
  nnoremap <silent> <C-F> :Telescope lsp_dynamic_workspace_symbols<CR>
else
  nnoremap <silent> <F8> :NERDTree<CR>
  nnoremap <silent> <F9> :Vista!!<CR>
  nnoremap <silent> <C-F> :Vista finder<CR>
endif
