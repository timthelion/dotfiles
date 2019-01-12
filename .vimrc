:set gfn =Monospace\ 22
syntax on
map <F2> a?<esc>r
map ' j
map ⠐ k
map ⠠ l
:set cb=unnamedplus
nnoremap  x "+x
nnoremap  y "+y
nnoremap  p "+gp
nnoremap  P "+gP
vnoremap  x "+x
vnoremap  y "+y
vnoremap  p "+gp
vnoremap  P "+gP
set ww=l,h
set autoindent
map q gq}
nnoremap j gj
nnoremap k gk
set tabstop=1
set shiftwidth=1
set expandtab
set visualbell
set listchars=tab:»»,trail:·,eol:¶,nbsp:⎵,precedes:←,extends:→ 
set sbr=↪
set list
set hls
"let g:HLSpace = 1
"let g:HLColorScheme = g:colors_name
function ToggleSpaceUnderscoring()
 if g:HLSpace
   highlight Search cterm=underline gui=underline ctermbg=none guibg=none ctermfg=none guifg=none
   let @/ = " "
  else
   highlight clear
   silent colorscheme "".g:HLColorScheme
   let @/ = ""
 endif
 let g:HLSpace = !g:HLSpace
endfunction

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
