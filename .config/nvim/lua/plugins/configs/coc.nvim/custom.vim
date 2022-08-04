" Coc Key Map
"
"
inoremap <silent><expr> <c-j>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><c-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"
" 触发 coc 补全列表
inoremap <silent><expr> <c-c> coc#refresh() 

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

xmap <leader>cs  <Plug>(coc-codeaction-selected)
nmap <leader>cs  <Plug>(coc-codeaction-selected)

nmap <leader>cc  <Plug>(coc-codeaction)

xmap <silent> <leader>c<leader> :<C-u>CocList -A files<CR>
nmap <silent> <leader>c<leader> :<C-u>CocList -A files<CR>

nnoremap <silent><nowait> <leader>cd  :<C-u>CocList diagnostics<cr>

xmap <silent> <leader>c/ :<C-u>CocList -I -A grep<CR>
nmap <silent> <leader>c/ :<C-u>CocList -I -A grep<CR>

nnoremap <silent> <leader>c* :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

xmap <leader>cb  :CocList buffers<CR>
nmap <leader>cb  :CocList buffers<CR>

xmap <leader>cm  :CocList commands<CR>
nmap <leader>cm  :CocList commands<CR>

xmap <leader>ck  :CocList marks<CR>
nmap <leader>ck  :CocList marks<CR>

xmap <leader>cp  :CocList maps<CR>
nmap <leader>cp  :CocList maps<CR>

nnoremap <silent><nowait> <leader>clr  :<C-u>CocListResume<CR>

" nmap <leader>rn <Plug>(coc-rename)
nmap <leader>cr <Plug>(coc-rename)

" nnoremap <silent><nowait> <leader>co  :<C-u>CocList -A outline<cr>
nnoremap <silent><nowait> <leader>co  :<C-u>CocList -A outline<cr>

"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" function! s:lightline_coc_diagnostic(kind, sign) abort
"   let info = get(b:, 'coc_diagnostic_info', 0)
"   if empty(info) || get(info, a:kind, 0) == 0
"     return ''
"   endif
"   return printf('%s:%s', a:sign, info[a:kind])
" endfunction
"
" function! LightlineCocErrors() abort
"   return s:lightline_coc_diagnostic('error', 'E')
" endfunction
"
" function! LightlineCocWarnings() abort
"   return s:lightline_coc_diagnostic('warning', 'W')
" endfunction
"
" function! LightlineCocInfos() abort
"   return s:lightline_coc_diagnostic('information', 'INFO')
" endfunction
"
" function! LightlineCocHints() abort
"   return s:lightline_coc_diagnostic('hints', 'HINT')
" endfunction


let g:coc_borderchars = ['', '', '', '', '', '', '', '']
