"|||||||||||||||||||||||||||||||||||||||||||||||| Semantic Tokens {
" let g:coc_default_semantic_highlight_groups = 1
"
" Tokens types that current Language Server supported:
" hi CocSemNamespace guifg='#EBCB8B'
" hi CocSemType guifg="#81A1C1"
" hi CocSemClass guifg="#81A1C1"
" hi CocSemEnum guifg="#81A1C1"
" hi CocSemInterface guifg="#81A1C1"
" hi CocSemStruct guifg="#81A1C1"
" hi CocSemTypeParameter guifg="#81A1C1"
" hi CocSemParameter guifg="#5E81AC"
" hi CocSemVariable guifg='#d8dee9'
" hi CocSemProperty guifg="#5E81AC"
" hi CocSemEnumMember 
" hi CocSemEvent
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
"
" Tokens modifiers that current Language Server supported:
" hi CocSemDeclaration guifg='#8FBCBB'
" hi CocSemDefinition guifg='#81A1C1'
" hi CocSemFunction guifg='#81A1C1'
" hi CocSemReadonly guifg='#81A1C1'
" hi CocSemStatic guifg='#BF616A'
" hi CocSemDeprecated guifg='#BF616A'
" hi CocSemAbstract guifg='#D08770'
" hi CocSemAsync guifg='#EBCB8B'
" hi CocSemModification guifg='#88C0D0'
" hi CocSemDocumentation guifg='#B48EAD'
" hi CocSemDefaultLibrary guifg='#88C0D0'
hi CocHighlightText guibg='#B48EAD' guifg='#2E3440'
hi CocErrorHighlight guibg='#BF616A'  guifg='#d8dee9'
hi CocWarnHighlight guibg='#EBCB8B'  guifg='#d8dee9'
"|||||||||||||||||||||||||||||||||||||||||||||||| Semantic Tokens }
"
"
"|||||||||||||||||||||||||||||||||||||||||||||||| Extensions {
let g:coc_global_extensions = []
let g:coc_global_extensions += ['coc-dictionary']
" let g:coc_global_extensions += ['coc-nav']
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
let g:coc_global_extensions += ['coc-go'] 
let g:coc_global_extensions += ['coc-json'] 
let g:coc_global_extensions += ['coc-sumneko-lua']
" let g:coc_global_extensions += ['coc-lua'] 
let g:coc_global_extensions += ['coc-rust-analyzer'] " rust
let g:coc_global_extensions += ['coc-sh'] " shell
let g:coc_global_extensions += ['coc-yaml'] " yaml
let g:coc_global_extensions += ['coc-toml'] " toml
let g:coc_global_extensions += ['coc-git']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-git.vim
let g:coc_global_extensions += ['coc-marketplace']
let g:coc_global_extensions += ['coc-spell-checker']
let g:coc_global_extensions += ['coc-yank']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-yank.vim
let g:coc_global_extensions += ['coc-translator']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-translator.vim
"|||||||||||||||||||||||||||||||||||||||||||||||| Extensions }
"
"
"|||||||||||||||||||||||||||||||||||||||||||||||| Keymapping  {
inoremap <silent><expr> <C-u> coc#refresh() " 触发补全

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

xmap <leader>cs  <Plug>(coc-codeaction-selected)
nmap <leader>cs  <Plug>(coc-codeaction-selected)

xmap <leader>ca  <Plug>(coc-codeaction)
nmap <leader>ca  <Plug>(coc-codeaction)

xmap <silent> <leader><leader> :<C-u>CocList --auto-preview files<CR>
nmap <silent> <leader><leader> :<C-u>CocList --auto-preview files<CR>
xmap <silent> <leader>/ :<C-u>CocList --interactive --auto-preview grep<CR>
nmap <silent> <leader>/ :<C-u>CocList --interactive --auto-preview grep<CR>
xmap <leader>b   :CocList --auto-preview buffers<CR>
nmap <leader>b   :CocList --auto-preview buffers<CR>

nnoremap <silent> <leader>* :exe 'CocList --interactive --auto-preview --input='.expand('<cword>').' grep'<CR>

nnoremap <silent><nowait> <leader>cd  :<C-u>CocList --auto-preview diagnostics<cr>

xmap <leader>cc  :CocList --auto-preview commands<CR>
nmap <leader>cc  :CocList --auto-preview commands<CR>

xmap <leader>cm  :CocList --auto-preview marks<CR>
nmap <leader>cm  :CocList --auto-preview marks<CR>

xmap <leader>k  :CocList --auto-preview maps<CR>
nmap <leader>k  :CocList --auto-preview maps<CR>

xmap <leader>co  :CocOutline<CR>
nmap <leader>co  :CocOutline<CR>

nnoremap <silent><nowait> <leader>cr :<C-u>CocListResume<CR>
nmap <leader>cr <Plug>(coc-refactor)

" nmap <expr> <silent> 'w <SID>select_current_word()
" function! s:select_current_word()
"   if !get(b:, 'coc_cursors_activated', 0)
"     return "\<Plug>(coc-cursors-word)
"   endif
"   return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
" endfunc

autocmd CursorHold * silent call CocActionAsync('highlight')

call coc#config('cSpell.dictionaryDefinitions', [
  \ { "name" : "actiontech", "path": expand("$HOME/.config/nvim/dicts/actiontech.txt") },
  \ { "name" : "personal", "path": expand("$HOME/.config/nvim/dicts/personal.txt") }
  \])
"|||||||||||||||||||||||||||||||||||||||||||||||| Keymapping  }
"
