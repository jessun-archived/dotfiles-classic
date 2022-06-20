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
let g:coc_global_extensions += ['coc-rust-analyzer'] " rust
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

let g:coc_global_extensions += ['coc-explorer']
source ~/.config/nvim/lua/plugins/configs/coc.nvim/coc-explorer.vim

source ~/.config/nvim/lua/plugins/configs/coc.nvim/custom.vim
