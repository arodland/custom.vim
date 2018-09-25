if has("gui_running")
  colo 256mycosm
  set guifont=DejaVu\ Sans\ Mono\ 16
  let g:airline_theme='papercolor'
else
  if $TERM =~ "xterm-color" || $TERM =~ "xterm-kitty" || $TERM =~ "256color"
    set t_Co=256
    if $NCURSES_NO_UTF8_ACS !~ "1"
      set termguicolors
    endif
    colo 256mycosm
    let g:airline_theme='papercolor'
  else
    colo elflord
    let g:airline_theme='hybrid'
  endif
endif

if $TERM =~ "xterm-kitty"
  let &t_ut=''
  let g:airline_powerline_fonts = 1
endif
