if has("nvim")
  lua require'lspconfig'.gopls.setup{}
  lua require'lspconfig'.perlls.setup{}
  lua require'lspconfig'.pylsp.setup{}
  lua require'lspconfig'.fortls.setup{}

  lua << EOF
  require'navigator'.setup({
    keymaps = {
      { key = "<C-j>", func = vim.diagnostic.goto_next, desc = "next diagnostic" },
      { key = "<C-k>", func = vim.diagnostic.goto_prev, desc = "prev diagnostic" },
      { key = "<Leader>gd", func = require('navigator.definition').definition, desc = "navigator goto definition" },
      { key = "gd", func = function() require('telescope.builtin').lsp_definitions({jump_type='never'}) end, desc = "telescope goto definition" },
      { key = "gr", func = function() require('telescope.builtin').lsp_references({jump_type='never'}) end, desc = "telescope goto definition" },
    },
    lsp = {
      format_on_save = false,
      diagnostic_scrollbar_sign = false,
      display_diagnostic_qf = false,
      disable_lsp = {'sqls'},
    }
  })
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
