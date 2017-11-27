function! s:detect() abort
  let lines = getline(1,1024)
  let l:spaces = 0
  let l:tabs = 0

  for line in lines
    if line =~# '^ '
      let spaces += 1
    endif
    if line =~# '^\t'
      let tabs += 1
    endif
  endfor

  if spaces > tabs && spaces > 4
    let b:go_no_auto_fmt = 1
  endif
endfunction

function! s:fmt_on_save()
  if !get(b:, "go_no_auto_fmt", 0)
    call go#fmt#Format(-1)
  endif
endfunction


augroup gofmt
  autocmd!
  autocmd FileType go call s:detect()
  autocmd BufWritePre *.go call s:fmt_on_save()
augroup END
