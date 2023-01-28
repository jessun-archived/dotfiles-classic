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
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T
" map s <Plug>Sneak_s
" map S <Plug>Sneak_S


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
let g:coc_global_extensions += ['coc-nav']
let g:coc_global_extensions += ['coc-emoji']
let g:coc_global_extensions += ['coc-extension-codemod']
let g:coc_global_extensions += ['coc-explorer']
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

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <Leader>er <Cmd>call CocAction('runCommand', 'explorer.doAction', 'closest', ['reveal:0'], [['relative', 0, 'file']])<CR>

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

" Use preset argument to open it
nmap <space>ef <Cmd>CocCommand explorer --preset floatingLeftside<CR>
nmap <space>d <Cmd>CocCommand explorer --preset floatingLeftside<CR>
nmap <space>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
nmap <space>ed <Cmd>CocCommand explorer<CR>

" List all presets
nmap <space>el <Cmd>CocList explPresets<CR>
