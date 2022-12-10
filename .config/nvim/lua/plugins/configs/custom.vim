"=========================== session {
augroup auto_save_session
  autocmd!
  autocmd VimEnter,BufWritePost,VimLeavePre,CursorMoved,CursorMovedI * :mksession!
augroup END
"=========================== session }
"
"=========================== yadm {
augroup bootstrap_filetype
  au!
  autocmd BufRead ~/.config/yadm/bootstrap  set syntax=bash
augroup END
"=========================== yadm }

"=========================== golang highlight }
let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
                \ 'p:package',
                \ 'i:imports:1',
                \ 'c:constants',
                \ 'v:variables',
                \ 't:types',
                \ 'n:interfaces',
                \ 'w:fields',
                \ 'e:embedded',
                \ 'm:methods',
                \ 'r:constructor',
                \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
                \ 't' : 'ctype',
                \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
                \ 'ctype' : 't',
                \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent'
\ }
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
"=========================== golang highlight }

"
" function! NearestMethodOrFunction() abort
"   return get(b:, 'vista_nearest_method_or_function', '')
" endfunction

" set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
" let g:vista_icon_indent = [">>>", ">"]
" let g:vista#renderer#enable_icon = 0

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
" let g:vista_default_executive = 'coc'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
" let g:vista_executive_for = {
"   \ }
"
" " Declare the command including the executable and options used to generate ctags output
" " for some certain filetypes.The file path will be appened to your custom command.
" " For example:
" let g:vista_ctags_cmd = {
"       \ }
"
" " To enable fzf's preview window set g:vista_fzf_preview.
" " The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" " For example:
" let g:vista_fzf_preview = ['right:50%']
" let g:vista_sidebar_width = 50

colorscheme nord
            
"--||||||||||||||||||||||||||||||||||||||||| vim-fugitive ||||||||||||||||||||||||||||||||||||||||||||
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>vs :Gvdiffsplit!<CR>
nnoremap <space>s :Gdiffsplit!<CR>
nnoremap <space>gc :G commit -v -q<CR>
nnoremap <space>gt :G commit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git blame<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>


"--||||||||||||||||||||||||||||||||||||||||| vim-sneak ||||||||||||||||||||||||||||||||||||||||||||
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
map s <Plug>Sneak_s
map S <Plug>Sneak_S



"--||||||||||||||||||||||||||||||||||||||||| theme  ||||||||||||||||||||||||||||||||||||||||||||
" let g:terminal_ansi_colors = ['#f65b5b', '#e74c4c', '#6bb05d', '#e59e67', '#5b98a9', '#b185db', '#51a39f', '#c4c4c4', '#343636', '#c26f6f', '#8dc776', '#e7ac7e', '#7ab3c3', '#bb84e5', '#6db0ad', '#cccccc']
" hi SpecialKey guifg=#343636
" hi NonText guifg=#343636 guibg=NONE
" hi Folded guibg=#343636 guifg=#8ccf7e
" hi MatchParen guibg=#6cd0ca guifg=#c4c4c4 gui=none
" hi CppObjType guifg=#6cd0ca gui=bold
" hi CocSemMacro guifg=#c47fd5
"
" hi CocSemVariable guifg=#c4c4c4
" hi CocSemParameter guifg=#e5e5e5
" hi CocSemFunction guifg=#e57474
" hi CocSemMethod guifg=#e57474 gui=italic,bold term=italic,bold cterm=italic,bold
" hi CocSemProperty guifg=#c4c4c4 gui=italic,bold term=italic,bold cterm=italic,bold
" hi link CocSemClass CppObjType
" hi link CocSemInterface CppObjType
" hi link CocSemEnum CppObjType
" hi CocSemEnumMember guifg=#c47fd5 gui=italic,bold term=italic,bold cterm=italic,bold
" hi link CocSemType CppObjType
" hi CocSemNamespace guifg=#6cd0ca
" hi link CocSemTypeParameter CppObjType
" hi CocSemConcept guifg=#e5c76b gui=italic,bold term=italic,bold cterm=italic,bold
" hi CocSemMacro guifg=#c47fd5
" hi link CocSemComment cComment
" hi Number guifg=#8ccf7e
" hi CocSemVirtual guifg=#e57474 gui=italic,bold,underline term=italic,bold,underline cterm=italic,bold,underline
"
" hi CocMenuSel guibg=#242626 gui=italic,bold term=italic,bold cterm=italic,bold
" "hi CocSemDeclaration gui=italic term=italic cterm=italic
"
" hi CocSemDeprecated gui=strikethrough term=strikethrough cterm=strikethrough
" hi CocHighlightText guibg=#343434
