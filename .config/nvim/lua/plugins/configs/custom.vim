"=========================== session {
augroup auto_save_session
  autocmd!
  autocmd VimEnter,BufWritePost,VimLeavePre,CursorMoved,CursorMovedI * :mksession!
augroup END
"=========================== session }
"
"=========================== session {
augroup bootstrap_filetype
  au!
  autocmd BufRead ~/.config/yadm/bootstrap  set syntax=bash
augroup END
"=========================== session }

"=========================== golang highlight }
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"=========================== golang highlight }

"=========================== colorscheme {
colorscheme nord
"=========================== colorscheme }
