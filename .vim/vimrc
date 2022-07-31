"-----------------------------------------------"
"               基础设置                        "
"-----------------------------------------------"
set modelines=0                          " 禁用模式行（安全措施）
syntax on                                " 语法高亮
filetype on                              " 开启文件类型检测
colorscheme desert

set encoding=utf-8                       " 编码设置
set number                               " 显示行号
set relativenumber                       " 显示相对行号
set smartindent                          " 智能缩进
set autoindent                           " 自动对齐

set smarttab
set tabstop=4                            " tab缩进
set shiftwidth=4                         " 设定自动缩进为4个字符
set expandtab                            " 用space替代tab的输入
set splitright                           " 设置左右分割窗口时，新窗口出现在右侧
set splitbelow                           " 设置水平分割窗口时，新窗口出现在底部

set nobackup                             " 不需要备份
set noswapfile                           " 禁止生成临时文件
set autoread                             " 文件自动检测外部更改
set clipboard=unnamed                    " 共享剪切板

set nocompatible                         " 去除vi一致性
set ambiwidth=double                     " 解决中文标点显示的问题
set nowrap                               " 不自动折行
set mouse=a                              " 使用鼠标
set mousehide                            " 输入时隐藏光标
set sidescroll=10                        " 移动到看不见的字符时，自动向右滚动是个字符

set sm!                                  " 高亮显示匹配括号
set hlsearch                             " 高亮查找匹配
set cursorline                           " 高亮显示当前行
set termguicolors                        " 启用终端真色

set showmatch                            " 显示匹配
set ruler                                " 显示标尺，在右下角显示光标位置
set novisualbell                         " 不要闪烁
set showcmd                              " 显示输入的命令

set laststatus=2                         " always show statusline
set showtabline=2                        " always show tabline
set vb t_vb=

" 设置代码折叠---------------------------------
"  set nofoldenable             " 启动 vim 时关闭折叠代码
"  set foldmethod=indent        " 设置语法折叠
"  setlocal foldlevel=99        " 设置折叠层数
"  nnoremap <space> za          " 用空格键来开关折叠

" 设置光标样式-------------------------------
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set completeopt=longest,menu             " 自动补全配置让Vim补全菜单行为跟IDE一致
set backspace=indent,eol,start           " 允许用退格键删除字符
let g:markdown_fenced_languages =['c', 'cpp', 'python', 'javascript']
set guifont=Hack_Nerd_Font_Mono:h16      " 设置字体和字体大小, 只对gui客户端起作用，终端使用需要修改终端字体和大小
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 设置状态行-----------------------------------
" 设置状态行显示常用信息
" %F 完整文件路径名
" %m 当前缓冲被修改标记
" %m 当前缓冲只读标记
" %h 帮助缓冲标记
" %w 预览缓冲标记
" %Y 文件类型
" %b ASCII值
" %B 十六进制值
" %l 行数
" %v 列数
" %p 当前行数占总行数的的百分比
" %L 总行数
" %{...} 评估表达式的值，并用值代替
" %{"[fenc=".(&fenc==""?&enc:&fenc).((exists("+bomb") && &bomb)?"+":"")."]"} 显示文件编码
" %{&ff} 显示文件类型
set statusline=%1*%F%m%r%h%w%=\ 
set statusline+=%2*\ %Y\ \|\  
set statusline+=%3*%{\"\".(\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"\"}\ 
set statusline+=%4*[%l:%v]\ 
set statusline+=%5*%p%%\ \|\ 
set statusline+=%6*%LL\ 

hi User1 cterm=none ctermfg=gray ctermbg=darkgray
hi User2 cterm=none ctermfg=darkgrey ctermbg=gray
hi User3 cterm=bold ctermfg=darkgrey ctermbg=gray
hi User4 cterm=bold ctermfg=yellow ctermbg=gray
hi User5 cterm=none ctermfg=darkgrey ctermbg=gray
hi User6 cterm=none ctermfg=darkgrey ctermbg=gray

" 设置tab栏-------------------------------------------------
" 选中的tab颜色
hi SelectTabLine term=Bold cterm=Bold ctermfg=DarkYellow ctermbg=LightGray
hi SelectPageNum cterm=None ctermfg=DarkRed ctermbg=LightGray
hi SelectWindowsNum cterm=None ctermfg=DarkCyan ctermbg=LightGray
" 未选中状态的tab
hi NormalTabLine cterm=None ctermfg=Gray ctermbg=DarkGray
hi NormalPageNum cterm=None ctermfg=Gray ctermbg=DarkGray
hi NormalWindowsNum cterm=None ctermfg=Gray ctermbg=DarkGray
" tab栏背景色
hi TabLineFill term=reverse ctermfg=5 ctermbg=7 guibg=#6c6c6c

function MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        let hlTab = ''
        let select = 0
        if i + 1 == tabpagenr()
            let hlTab = '%#SelectTabLine#'
            let s ..= hlTab . '⎡%#SelectPageNum#%T' . (i + 1) . hlTab
            let select = 1
        else
            let hlTab = '%#NormalTabLine#'
            let s ..= hlTab . "⎡%#NormalTabLine#%T" . (i + 1) . hlTab
        endif

        " the label is made by MyTabLabel()
        let s .= ' %<%{MyTabLabel(' . (i + 1) . ', ' . select . ')} '
        "追加窗口数量
        let wincount = tabpagewinnr(i + 1, '$')
        if wincount > 1
            if select == 1
                let s .= "%#SelectWindowsNum#" . wincount
            else
                let s .= "%#NormalWindowsNum#" . wincount
            endif
        endif
        let s .= hlTab . "⎦"
    endfor

    " after the last tab fill with TabLineFill and reset tab page nr
    let s ..= '%#TabLineFill#%T'

    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
      let s ..= '%=%#TabLine#%999X░❨X❩'
    endif

    return s
endfunction

" Now the MyTabLabel() function is called for each tab page to get its label. >
function MyTabLabel(n, select)
    let label = ''
    let buflist = tabpagebuflist(a:n)

    for bufnr in buflist
        if getbufvar(bufnr, "&modified")
            let label = '+'
            break
        endif
    endfor

    let winnr = tabpagewinnr(a:n)
    let name = bufname(buflist[winnr - 1])

    if name == ''
        if &buftype == 'quickfix'
            let name = '[Quickfix List]'
        else
            let name = '[No Name]'
        endif
    else
        let name = fnamemodify(name, ':t')
    endif

    let label .= name
    return label
endfunction

set tabline=%!MyTabLine()

" 设置netrw-------------------------------------
let g:netrw_banner = 0         " 设置是否显示横幅
let g:netrw_liststyle = 3      " 设置目录列表样式：树形
let g:netrw_browse_split = 4   " 在之前的窗口编辑文件
let g:netrw_altv = 1           " 水平分割时，文件浏览器始终显示在左边
let g:netrw_winsize = 20       " 设置文件浏览器窗口宽度为25%
let g:netrw_list_hide= '^\..*' " 不显示隐藏文件 用 a 键就可以显示所有文件、 隐藏匹配文件或只显示匹配文件
" 自动打开文件浏览器
" augroup ProjectDrawer
"     autocmd!
"     autocmd VimEnter * :Vexplore
" augroup END

nnoremap <SPACE>ft :Lexplore<CR>    " 打开或关闭目录树

"-----------------------------------------------"
"               自定义功能                      "
"-----------------------------------------------"

" 快捷键绑定-------------------------
let mapleader='\'
" 窗口移动快捷键
noremap <TAB>w <C-w>w
noremap <TAB><left> <C-w><left>
noremap <TAB><right> <C-w><right>
noremap <TAB><up> <C-w><up>
noremap <TAB><down> <C-w><down>
" 使用方向键切换buffer
noremap <Leader><left> :bp<CR>
noremap <Leader><right> :bn<CR>
" 使用方括号切换tab
noremap <Leader>] :tabnext<CR>
noremap <Leader>[ :tabprevious<CR>
" 使用 \ + s 保存, \ + q 退出
noremap <Leader>s :w<CR>
noremap <Leader>q :q<CR>
