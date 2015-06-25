" Open the incremented current path.
" Version: 0.1.0
" Author : wara <kusabashira227@gmail.com>
" License: MIT License

if exists('g:loaded_incopen')
  finish
endif
let g:loaded_incopen = 1

let s:save_cpo = &cpo
set cpo&vim

command! -bar -range=1 Incopen
\ call incopen#incopen(expand('%:p'), <count>)
command! -bar -range=1 Decopen
\ call incopen#decopen(expand('%:p'), <count>)

nnoremap <silent> <Plug>(incopen) :<C-u>Incopen<CR>
nnoremap <silent> <Plug>(decopen) :<C-u>Decopen<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
