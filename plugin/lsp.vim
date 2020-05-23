if executable('perl-lsp')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'perl-languageserver',
    \ 'cmd': ['perl-lsp', '--debug', '--version', '2.1.0'],
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
