xmap <leader>cs  <Plug>(coc-codeaction-selected)
nmap <leader>cs  <Plug>(coc-codeaction-selected)

nmap <leader>cc  <Plug>(coc-codeaction)

" xmap <silent> <leader>c<leader> :<C-u>CocList -A files<CR>
" nmap <silent> <leader>c<leader> :<C-u>CocList -A files<CR>
xmap <silent> <leader><leader> :<C-u>CocList -A files<CR>
nmap <silent> <leader><leader> :<C-u>CocList -A files<CR>

xmap <silent> <leader>c<leader> :<C-u>CocList -A files<CR>
nmap <silent> <leader>c<leader> :<C-u>CocList -A files<CR>

nnoremap <silent><nowait> <leader>cd  :<C-u>CocList diagnostics<cr>

" xmap <silent> <leader>c/ :<C-u>CocList -I -A grep<CR>
" nmap <silent> <leader>c/ :<C-u>CocList -I -A grep<CR>

xmap <silent> <leader>/ :<C-u>CocList -I -A grep<CR>
nmap <silent> <leader>/ :<C-u>CocList -I -A grep<CR>

xmap <silent> <leader>c/ :<C-u>CocList -I -A grep<CR>
nmap <silent> <leader>c/ :<C-u>CocList -I -A grep<CR>

" nnoremap <silent> <leader>c* :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>
nnoremap <silent> <leader>* :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>
nnoremap <silent> <leader>c* :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

" xmap <leader>cb  :CocList buffers<CR>
" nmap <leader>cb  :CocList buffers<CR>
xmap <leader>b  :CocList buffers<CR>
nmap <leader>b  :CocList buffers<CR>

xmap <leader>cb  :CocList buffers<CR>
nmap <leader>cb  :CocList buffers<CR>

xmap <leader>cm  :CocList commands<CR>
nmap <leader>cm  :CocList commands<CR>

" xmap <leader>cm  :CocList marks<CR>
" nmap <leader>cm  :CocList marks<CR>
xmap <leader>m  :CocList marks<CR>
nmap <leader>m  :CocList marks<CR>

xmap <leader>cm  :CocList marks<CR>
nmap <leader>cm  :CocList marks<CR>

xmap <leader>k  :CocList maps<CR>
nmap <leader>k  :CocList maps<CR>

xmap <leader>ck  :CocList maps<CR>
nmap <leader>ck  :CocList maps<CR>

nnoremap <silent><nowait> <leader>r  :<C-u>CocListResume<CR>
nnoremap <silent><nowait> <leader>cr  :<C-u>CocListResume<CR>

" nmap <leader>rn <Plug>(coc-rename)
nmap <leader>n <Plug>(coc-rename)

nmap <leader>ced <Cmd>CocCommand explorer --preset .vim<CR>
nmap <leader>cef <Cmd>CocCommand explorer --preset floating<CR>
nmap <leader>cec <Cmd>CocCommand explorer --preset cocConfig<CR>
nmap <leader>ceb <Cmd>CocCommand explorer --preset buffer<CR>
nmap <leader>cel <Cmd>CocList explPresets<CR>
nmap <Leader>cer <Cmd>call CocAction('runCommand', 'explorer.doAction', 'closest', ['reveal:0'], [['relative', 0, 'file']])<CR>

" List all presets
" nmap <leader>ce <Cmd>CocCommand explorer<CR>
" nmap <leader>e <Cmd>CocCommand explorer<CR>
" nmap <leader>e <Cmd>CocCommand explorer<CR>

" nnoremap <silent><nowait> <leader>co  :<C-u>CocList -A outline<cr>
nnoremap <silent><nowait> <leader>o  :<C-u>CocList -A outline<cr>

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


" let g:coc_borderchars = ['', '', '', '', '', '', '', '']
