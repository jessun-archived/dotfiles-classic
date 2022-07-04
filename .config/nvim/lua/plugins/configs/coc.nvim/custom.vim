xmap <leader>cc  <Plug>(coc-codeaction-selected)
nmap <leader>cc  <Plug>(coc-codeaction-selected)

xmap <silent> <leader><leader> :<C-u>CocList -A files<CR>
nmap <silent> <leader><leader> :<C-u>CocList -A files<CR>


xmap <silent> <leader>/ :<C-u>CocList -I -A grep<CR>
nmap <silent> <leader>/ :<C-u>CocList -I -A grep<CR>

nnoremap <silent> <leader>* :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

xmap <leader>b  :CocList buffers<CR>
nmap <leader>b  :CocList buffers<CR>

xmap <leader>cm  :CocList commands<CR>
nmap <leader>cm  :CocList commands<CR>

xmap <leader>m  :CocList marks<CR>
nmap <leader>m  :CocList marks<CR>

xmap <leader>k  :CocList maps<CR>
nmap <leader>k  :CocList maps<CR>

nnoremap <silent><nowait> <space>r  :<C-u>CocListResume<CR>

nmap <space>ced <Cmd>CocCommand explorer --preset .vim<CR>
nmap <space>cef <Cmd>CocCommand explorer --preset floating<CR>
nmap <space>cec <Cmd>CocCommand explorer --preset cocConfig<CR>
nmap <space>ceb <Cmd>CocCommand explorer --preset buffer<CR>
nmap <space>cel <Cmd>CocList explPresets<CR>
nmap <Leader>cer <Cmd>call CocAction('runCommand', 'explorer.doAction', 'closest', ['reveal:0'], [['relative', 0, 'file']])<CR>

" List all presets
nmap <space>e <Cmd>CocCommand explorer<CR>
nnoremap <silent><nowait> <space>o  :<C-u>CocList -A outline<cr>

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
