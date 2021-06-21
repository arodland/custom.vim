if has("nvim")
  lua require'lspconfig'.gopls.setup{}
  lua require'lspconfig'.pyls.setup{}
  lua require'lspconfig'.perlls.setup{}
else
  if executable('perl-lsp')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'perl-languageserver',
      \ 'cmd': ['perl', '-MPerl::LanguageServer', '-e', 'Perl::LanguageServer::run', '--', '--debug', '--version', '2.1.0'],
      \ 'whitelist': ['perl'],
      \ })
  endif

  if executable('pyls')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'pyls',
      \ 'cmd': {server_info->['pyls']},
      \ 'whitelist': ['python'],
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
