if has("nvim")
  lua <<EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    ...
  }
EOF
endif
