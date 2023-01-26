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

autocmd FileType json syntax match Comment +\/\/.\+$+
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
let g:sneak#label = 1
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
hi CocSemVariable guifg='#d8dee9'
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
"hi CocSemDefinition guifg='#81A1C1'
hi CocSemReadonly guifg='#81A1C1'
" hi CocSemStatic guifg='#BF616A'
" hi CocSemDeprecated guifg='#BF616A'
" hi CocSemAbstract guifg='#D08770'
" hi CocSemAsync guifg='#EBCB8B'
" hi CocSemModification guifg='#88C0D0'
" hi CocSemDocumentation guifg='#B48EAD'
" hi CocSemDefaultLibrary guifg='#88C0D0'
hi CocHighlightText guifg='#d8dee9' guibg='#BF616A'



"--||||||||||||||||||||||||||||||||||||||||| coc.nvim  ||||||||||||||||||||||||||||||||||||||||||||
let g:coc_global_extensions = []

" ============== coc.nvim official {
let g:coc_global_extensions += ['coc-dictionary']
let g:coc_global_extensions += ['coc-emoji']
let g:coc_global_extensions += ['coc-extension-codemod']
let g:coc_global_extensions += ['coc-highlight']
let g:coc_global_extensions += ['coc-tag']
let g:coc_global_extensions += ['coc-snippets']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-snippets.vim

let g:coc_global_extensions += ['coc-syntax']
let g:coc_global_extensions += ['coc-word']
let g:coc_global_extensions += ['coc-lists']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-list.vim
" ============== coc.nvim official }
"
" ============== coc.nvim lsp {
let g:coc_global_extensions += ['coc-go'] " golang coding, completion, format
let g:coc_global_extensions += ['coc-json'] " json format
let g:coc_global_extensions += ['coc-sumneko-lua'] " lua completion and format
" let g:coc_global_extensions += ['coc-lua'] " lua completion and format
" let g:coc_global_extensions += ['coc-rust-analyzer'] " rust
let g:coc_global_extensions += ['coc-sh'] " shell
let g:coc_global_extensions += ['coc-yaml'] " yaml
let g:coc_global_extensions += ['coc-toml'] " toml
" ============== coc.nvim lsp }

" let g:coc_global_extensions += ['coc-ci']
" source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-ci.vim

let g:coc_global_extensions += ['coc-git']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-git.vim

let g:coc_global_extensions += ['coc-marketplace']
let g:coc_global_extensions += ['coc-spell-checker']


let g:coc_global_extensions += ['coc-yank']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-yank.vim

let g:coc_global_extensions += ['coc-translator']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-translator.vim


"===================
" 触发 coc 补全列表
inoremap <silent><expr> <C-u> coc#refresh() 

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

xmap <leader>cs  <Plug>(coc-codeaction-selected)
nmap <leader>cs  <Plug>(coc-codeaction-selected)

xmap <leader>ca  <Plug>(coc-codeaction)
nmap <leader>ca  <Plug>(coc-codeaction)

xmap <silent> <leader>c<leader> :<C-u>CocList --auto-preview files<CR>
nmap <silent> <leader>c<leader> :<C-u>CocList --auto-preview files<CR>
xmap <silent> <leader>cf :<C-u>CocList --auto-preview files<CR>
nmap <silent> <leader>cf :<C-u>CocList --auto-preview files<CR>
" xmap <silent> <leader><leader> :<C-u>CocList --auto-preview files<CR>
" nmap <silent> <leader><leader> :<C-u>CocList --auto-preview files<CR>

nnoremap <silent><nowait> <leader>cd  :<C-u>CocList --auto-preview diagnostics<cr>

xmap <silent> <leader>c/ :<C-u>CocList --interactive --auto-preview grep<CR>
nmap <silent> <leader>c/ :<C-u>CocList --interactive --auto-preview grep<CR>
" xmap <silent> <leader>/ :<C-u>CocList --interactive --auto-preview grep<CR>
" nmap <silent> <leader>/ :<C-u>CocList --interactive --auto-preview grep<CR>

nnoremap <silent><nowait> <space>ls  :<C-u>CocList --interactive --auto-preview symbols<cr>

nnoremap <silent> <leader>c* :exe 'CocList --interactive --input='.expand('<cword>').' grep'<CR>

xmap <leader>cb  :CocList --auto-preview buffers<CR>
nmap <leader>cb  :CocList --auto-preview buffers<CR>
" xmap <leader>b   :CocList --auto-preview buffers<CR>
" nmap <leader>b   :CocList --auto-preview buffers<CR>

xmap <leader>cc  :CocList --auto-preview commands<CR>
nmap <leader>cc  :CocList --auto-preview commands<CR>

xmap <leader>cm  :CocList --auto-preview marks<CR>
nmap <leader>cm  :CocList --auto-preview marks<CR>

xmap <leader>ck  :CocList --auto-preview maps<CR>
nmap <leader>ck  :CocList --auto-preview maps<CR>

xmap <leader>co  :CocOutline<CR>
nmap <leader>co  :CocOutline<CR>

nnoremap <silent><nowait> <leader>cr  :<C-u>CocListResume<CR>

nmap <expr> <silent> 'w <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

nmap <leader>rf <Plug>(coc-refactor)

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

" function! s:DiagnosticNotify() abort
"   let l:info = get(b:, 'coc_diagnostic_info', {})
"   if empty(l:info) | return '' | endif
"   let l:msgs = []
"   let l:level = 'info'
"    if get(l:info, 'warning', 0)
"     let l:level = 'warn'
"   endif
"   if get(l:info, 'error', 0)
"     let l:level = 'error'
"   endif
"  
" if get(l:info, 'error', 0)
"     call add(l:msgs, ' Errors: ' . l:info['error'])
"   endif
"   if get(l:info, 'warning', 0)
"     call add(l:msgs, ' Warnings: ' . l:info['warning'])
"   endif
"   if get(l:info, 'information', 0)
"     call add(l:msgs, ' Infos: ' . l:info['information'])
"   endif
"   if get(l:info, 'hint', 0)
"     call add(l:msgs, ' Hints: ' . l:info['hint'])
"   endif
"   let l:msg = join(l:msgs, "\n")
"   if empty(l:msg) | let l:msg = ' All OK' | endif
"   call v:lua.coc_diag_notify(l:msg, l:level)
" endfunction
"
" function! s:StatusNotify() abort
"   let l:status = get(g:, 'coc_status', '')
"   let l:level = 'info'
"   if l:status =~ 'cSpell' | return '' | endif
"   if empty(l:status) | return '' | endif
"   call v:lua.coc_status_notify(l:status, l:level)
" endfunction
"
" function! s:InitCoc() abort
"   execute "lua vim.notify('Initialized coc.nvim for LSP support', 'info', { title = 'LSP Status' })"
" endfunction
"
" " notifications
" autocmd User CocNvimInit call s:InitCoc()
" autocmd User CocDiagnosticChange call s:DiagnosticNotify()
" autocmd User CocStatusChange call s:StatusNotify()
autocmd BufAdd NERD_tree_*,your_buffer_name.rb,*.js :let b:coc_current_word_disabled_in_this_buffer = 1
autocmd BufWritePost * silent call CocActionAsync('diagnosticRefresh')
autocmd CursorHold * silent call CocActionAsync('highlight')
let g:coc_current_word_highlight_delay = 100

" Use <C-n>, <C-p>, <up> and <down> to navigate completion list: >

" inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
" inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"
" inoremap <silent><expr> <down> coc#pum#visible() ? coc#pum#next(0) : "\<down>"
" inoremap <silent><expr> <up> coc#pum#visible() ? coc#pum#prev(0) : "\<up>"

" Use <PageDown> and <PageUp> to scroll: >

" inoremap <silent><expr> <PageDown> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
" inoremap <silent><expr> <PageUp> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"

" Use <C-e> and <C-y> to cancel and confirm completion: >

" inoremap <silent><expr> <C-e> coc#pum#visible() ? coc#pum#cancel() : "\<C-e>"
" inoremap <silent><expr> <C-y> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"

" Note: <CR> and <Tab> are not remapped by coc.nvim.
"
"
" let g:copilot_no_tab_map = v:true
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1):
"       \ exists('b:_copilot.suggestions') ? copilot#Accept("\<CR>") :
"       \ CheckBackSpace() ? "\<Tab>" :
"       \ coc#refresh()


" Gets Errors and Warnings for buffer plus the Status message from coc.nvim
" function! StatusDiagnosticForBuffer() abort
"   let info = get(b:, 'coc_diagnostic_info', {})
"   if empty(info) | return '' | endif
"   let msgs = []
"   if get(info, 'error', 0)
"     call add(msgs, '✘' . info['error'])
"   endif
"   if get(info, 'warning', 0)
"     call add(msgs, '' . info['warning'])
"   endif
"   return join(msgs, ' ')
" endfunction


" Gets Errors and Warnings for the entire workspace from coc.nvim
" function! StatusDiagnosticForWorkspace() abort
"   let diagnostics = CocAction('diagnosticList')
"   if type(diagnostics) == v:t_list
"     let errors = []
"     let warnings = []
"     for diagnostic in diagnostics
"       if diagnostic['severity'] == 'Error'
"         call add(errors, diagnostic)
"       endif
"       if diagnostic['severity'] == 'Warning'
"         call add(warnings, diagnostic)
"       endif
"     endfor
"     return " E" . string(len(errors)) . " W" . string(len(warnings)) . " "
"   endif
" endfunction

function! UpdateWorkspaceCocDiagnostic() abort
  if !get(g:, 'coc_workspace_initialized', 'v:true')
    return
  endif
  let diagnostics = CocAction('diagnosticList')
  if type(diagnostics) == v:t_list
    let errors = []
    let warnings = []
    let infos = []
    let hints = []
    for diagnostic in diagnostics
      if diagnostic['severity'] == 'Error'
        call add(errors, diagnostic)
      endif
      if diagnostic['severity'] == 'Warning'
        call add(warnings, diagnostic)
      endif
      if diagnostic['severity'] == 'Information'
        call add(infos, diagnostic)
      endif
      if diagnostic['severity'] == 'Hint'
        call add(hints, diagnostic)
      endif
    endfor
    let g:coc_diagnostic_info = {'error': len(errors), 'warning': len(warnings), 'information': len(infos), 'hint': len(hints)}
  endif
endfunction

" autocmd CursorHold,CursorHoldI,CursorMovedI,CursorMoved,BufWritePost * silent! call UpdateWorkspaceCocDiagnostic()
"
