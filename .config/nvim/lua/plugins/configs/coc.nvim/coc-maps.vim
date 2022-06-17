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


