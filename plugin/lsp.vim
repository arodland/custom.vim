if has("nvim")
  lua require'lspconfig'.gopls.setup{}
  lua << EOF
  require'navigator'.setup({
    keymaps = {
      { key = "<C-j>", func = "diagnostic.goto_next({ border = 'single' })" },
      { key = "<C-k>", func = "diagnostic.goto_prev({ border = 'single' })" },
    },
  })
EOF
  lua require'lspconfig'.perlls.setup{}
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
