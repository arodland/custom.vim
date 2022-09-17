if has("nvim")
  lua require('dap-go').setup()
  lua << EOF
  local dap, dapui = require("dap"), require("dapui")
  dapui.setup()

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
EOF

  nnoremap <silent> ]t <Cmd>lua require('dap-go').debug_test()<CR>
  nnoremap <silent> ]b <Cmd>lua require('dap').toggle_breakpoint()<CR>
  nnoremap <silent> ]B <Cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
  nnoremap <silent> ]c <Cmd>lua require('dap').continue()<CR>
  nnoremap <silent> ]s <Cmd>lua require('dap').step_over()<CR>
  nnoremap <silent> ]S <Cmd>lua require('dap').step_into()<CR>
  nnoremap <silent> ]i <Cmd>lua require('dap').step_into()<CR>
  nnoremap <silent> ]o <Cmd>lua require('dap').step_out()<CR>
  nnoremap <silent> ]] <Cmd>lua require('dap').repl.open()<CR>
  nnoremap <silent> ]e <Cmd>lua require('dapui').eval()<CR>
endif
