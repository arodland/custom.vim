if has("nvim")
"  lua require'lspconfig'.gopls.setup{} " vim-go will load this
  lua require'lspconfig'.perlls.setup{}
  lua require'lspconfig'.pylsp.setup{}
  lua require'lspconfig'.fortls.setup{}

  lua << EOF
  vim.diagnostic.config({
    float = { border = 'none' }
  })
EOF
else
  if executable('perl-lsp')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'perl-languageserver',
      \ 'cmd': ['perl', '-MPerl::LanguageServer', '-e', 'Perl::LanguageServer::run', '--', '--debug', '--version', '2.1.0'],
      \ 'whitelist': ['perl'],
      \ })
  endif

  if executable('gopls')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'gopls',
      \ 'cmd': {server_info->['gopls']},
      \ 'whitelist': ['go'],
      \ })
  endif
endif
