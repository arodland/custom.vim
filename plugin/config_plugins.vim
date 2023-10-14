filetype plugin indent on

vmap ,, ""d:let[a,b]=[@",@"]\|let a=substitute(tolower(a),"[^a-z]","_","g")\|let @"="<a href=\"#".a."\">".b."</a>"<Esc>P

command! -range=% -nargs=* Tidy <line1>,<line2>!
        \perltidy -l=120 -i=2 -ci=2 -ole=unix -nola -nwls="**" -nwrs="**" -olc -ce -bar <args>
