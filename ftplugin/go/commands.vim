if exists("g:my_go_commands")
  finish
endif
let g:my_go_commands=1

command! GoTogglePublic call GoTogglePublic()
nnoremap <silent> <Plug>(go-toggle-public) :<C-u>call GoTogglePublic()<CR>

function GoTogglePublic()
  let from = expand("<cword>")

  if from[0] == toupper(from[0])
    let to = tolower(from[0]) . from[1:]
  else
    let to = toupper(from[0]) . from[1:]
  endif

  call go#rename#Rename(to)
endfunction

map ,r <Plug>(go-rename)
map ,d <Plug>(go-describe)
map ,D <Plug>(go-doc)
map <C-]> <Plug>(go-def-vertical)
map ,i <Plug>(go-implements)
map ,R <Plug>(go-referrers)
map ,p <Plug>(go-toggle-public)
