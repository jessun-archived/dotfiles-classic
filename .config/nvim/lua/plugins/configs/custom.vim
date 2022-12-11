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
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_types = 1
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


"--||||||||||||||||||||||||||||||||||||||||| custom theme  ||||||||||||||||||||||||||||||||||||||||||||
" let g:coc_default_semantic_highlight_groups = 1
" Tokens types that current Language Server supported:
" hi CocSemNamespace guifg='#EBCB8B'
" hi CocSemType guifg="#81A1C1"
" hi CocSemClass guifg="#81A1C1"
" hi CocSemEnum guifg="#81A1C1"
" hi CocSemInterface guifg="#81A1C1"
" hi CocSemStruct guifg="#81A1C1"
" hi CocSemTypeParameter guifg="#81A1C1"
" hi CocSemParameter guifg="#5E81AC"
" hi CocSemVariable guifg='#AEBECD'
" hi CocSemProperty guifg="#5E81AC"
" " hi CocSemEnumMember 
" " hi CocSemEvent
" hi CocSemFunction guifg="#88C0D0"
" hi CocSemMethod guifg="#8FBCBB"
" hi CocSemMacro guifg="#81A1C1"
" hi CocSemKeyword guifg="#81A1C1"
" hi CocSemModifier guifg="#88C0D0"
" hi CocSemComment guifg="#434C5E"
" hi CocSemString guifg="#A3BE8C"
" hi CocSemNumber guifg="#B48EAD"
" hi CocSemRegexp guifg="#8FBCBB"
" hi CocSemDecorator guifg="#88C0D0"
" hi CocSemOperator guifg="#81A1C1"
" "
" " " Tokens modifiers that current Language Server supported:
" hi CocSemDeclaration guifg='#8FBCBB'
hi CocSemDefinition guifg='#81A1C1'
hi CocSemReadonly guifg='#81A1C1'
" hi CocSemStatic guifg='#BF616A'
" hi CocSemDeprecated guifg='#BF616A'
" hi CocSemAbstract guifg='#D08770'
" hi CocSemAsync guifg='#EBCB8B'
" hi CocSemModification guifg='#88C0D0'
" hi CocSemDocumentation guifg='#B48EAD'
" hi CocSemDefaultLibrary guifg='#88C0D0'
