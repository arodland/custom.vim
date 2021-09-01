if has("nvim")
  lua <<EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    ...
  }
EOF
endif
