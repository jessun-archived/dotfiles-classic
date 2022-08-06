local vim = vim
local vim_api = vim.api
local vim_global_options = vim.o

local Config = {}

function Config:load_config()
    ------------------------------------------------------------------------------------------------------------ { basic config

    vim_global_options.maxmempattern = 2000000 -- vim 做字符串匹配时使用的最大内存
    vim_global_options.redrawtime = 200000 -- vim 重绘屏幕时间，单位毫秒
    vim_global_options.shell = "/bin/bash" -- vim shell
    vim_global_options.synmaxcol = 5000 -- 搜索语法项目的最大长度
    vim_global_options.ttyfast = true -- 表明使用终端快速模式，:help ttyfast
    vim_global_options.number = true -- 显示行号
    vim_global_options.mouse = "a" -- 打开鼠标
    vim_global_options.scrolloff = 4 -- 光标和屏幕上下保持 x 行的距离
    vim_global_options.autoread = true -- 当文件变化时，自动 reload
    vim_global_options.swapfile = false -- 是否生成 .swp 文件
    vim_global_options.showcmd = true -- 显示命令
    vim_global_options.showtabline = 2 -- 显示 tabline
    vim_global_options.wrap = false -- 是否自动换行
    vim_global_options.conceallevel = 0 -- 隐藏模式，0：不隐藏，1：隐藏第一个字符，2：隐藏第一个字符和第二个字符
    vim_global_options.selection = "inclusive" -- 选择模式，inclusive：包含起始和结束，exclusive：不包含起始和结束
    vim_global_options.backspace = "indent,eol,start" -- 删除模式，indent：删除缩进，eol：删除行尾，start：删除行首
    vim_global_options.autowriteall = true -- 当文件变化时，自动保存
    vim_global_options.confirm = true -- 当文件变化时，是否弹出确认框
    vim_global_options.history = 10000 -- 历史记录条数
    vim_global_options.iskeyword = "_,$,@,%,#,-" -- 关键字
    vim_global_options.nrformats = "" -- 数字格式
    vim_global_options.showmatch = true -- 显示匹配的括号
    vim_global_options.tabpagemax = 30 -- VIM 打开 tab 的最大数量
    vim_global_options.cursorcolumn = true -- 显示光标所在的列
    vim_global_options.cursorline = true -- 显示光标所在的行

    vim_global_options.wildmenu = true
    vim_global_options.wildmode = "longest:full,full" -- 当按下 <Tab> 时，显示全部匹配的语法项目
    vim_global_options.colorcolumn = "80" -- 当光标所在的列超过 80 列时，显示颜色
    -- vim_global_options.textwidth = 80 -- 文本宽度
    vim_global_options.relativenumber = true -- 是否显示相对行号
    vim_global_options.foldlevelstart = 20 -- 折叠级别的起始值
    vim_global_options.ruler = true -- 显示状态栏
    vim_global_options.showcmd = true -- 显示命令
    vim_global_options.termguicolors = true -- 当前颜色
    vim_global_options.laststatus = 2 -- 显示状态栏
    vim_global_options.paste = false -- 是否允许粘贴
    vim_global_options.signcolumn = "yes" -- 是否显示标记列
    vim_global_options.hidden = true -- 是否显示隐藏文件
    vim_global_options.clipboard = "unnamedplus" -- 剪贴板
    vim_global_options.autoindent = true -- 自动缩进
    vim_global_options.foldmethod = "expr" -- 折叠方式
    vim_global_options.foldexpr = "nvim_treesitter#foldexpr()" -- 折叠表达式
    vim_global_options.complete = "." -- 自动补全
    vim_global_options.foldenable = false -- 是否启用折叠
    vim_global_options.smartindent = true -- 是否启用智能缩进
    vim_global_options.smarttab = true -- 是否启用智能 Tab
    vim_global_options.shiftwidth = 4 -- 缩进宽度base
    vim_global_options.softtabstop = 4 -- Tab 的宽度
    vim_global_options.expandtab = true -- 是否使用 Tab 进行缩进
    vim_global_options.tabstop = 4 -- Tab 的宽度
    vim_global_options.linebreak = true -- 是否启用换行符
    vim_global_options.list = false -- 是否启用列表
    vim_global_options.langmenu = "zh_CN.UTF-8" -- 语言
    vim_global_options.helplang = "cn" -- 语言
    vim_global_options.encoding = "utf-8" -- 语言
    vim_global_options.fileencodings = "ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,gbk,gb2312" -- TODO
    vim_global_options.incsearch = true -- 搜索时大小写不敏感
    vim_global_options.hlsearch = true -- 搜索高亮
    vim_global_options.ignorecase = true -- 忽略大小写
    vim_global_options.smartcase = true -- 智能大小写
    vim_global_options.backup = false -- 是否生成备份文件
    vim_global_options.writebackup = false -- 覆盖文件前，是否生成备份文件
    vim_global_options.updatetime = 300 -- updatetime 时间内没有输入，把交换文件写入磁盘
    vim_global_options.cmdheight = 2 -- 命令行使用的屏幕行数
    vim_global_options.ttimeout = false -- 按键超时相关
    vim_global_options.ttimeoutlen = 0

    vim["loaded_matchparen"] = 1 -- 禁用高亮匹配括号

    vim_api.nvim_command("inoremap # <space><backspace>#") -- TODO
    vim_api.nvim_command("syntax sync minlines=128") -- TODO
    vim_api.nvim_command("set path+=**") -- TODO
    vim_api.nvim_command("set tags=./tags,tags,./.tags,./ctags,ctags,./.ctags") -- TODO
    vim_global_options.background = "dark" -- TODO
    vim_api.nvim_command("filetype on") -- TODO
    vim_api.nvim_command("colorscheme desert") -- TODO
    vim_api.nvim_command("set shortmess+=c") -- TODO
    -- vim_api.nvim_command("set wildmenu") -- TODO
    vim_api.nvim_command("filetype plugin indent on") -- TODO
    vim_api.nvim_command("filetype plugin on") -- TODO
    vim_api.nvim_command("%retab!") -- TODO
    vim_api.nvim_command("language message zh_CN.UTF-8") -- TODO

    -- auto switch between norelativenumber and relativenumber
    -- vim_api.nvim_command("highlight EndOfBuffer ctermfg=black ctermbg=black")
    vim_api.nvim_command("augroup relative_numbser")
    vim_api.nvim_command("autocmd!")
    vim_api.nvim_command("autocmd InsertEnter * :set norelativenumber")
    vim_api.nvim_command("autocmd InsertLeave * :set relativenumber")
    vim_api.nvim_command("augroup END")

    vim_api.nvim_command("autocmd FileType gitcommit set colorcolumn=50") --- gitcommit file title length limit
    vim_api.nvim_command("autocmd InsertLeave * :silent !fcitx5-remote -c") --- fcitx
    -- vim_api.nvim_command("autocmd FileType json syntax match Comment +//.+$+") --- gitcommit file title length limit


    vim.g.did_load_filetypes = 1
    ------------------------------------------------------------------------------------------------------------ basic config }

    ------------------------------------------------------------------------------------------------------------ { key map

    vim_api.nvim_set_keymap("n", " ", "", { noremap = true, silent = true })
    vim.g.mapleader = " " -- set <leader> to <space>
    vim_api.nvim_set_keymap("n", "gj", "j", { noremap = true, silent = true })
    vim_api.nvim_set_keymap("n", "gk", "k", { noremap = true, silent = true })
    vim_api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })
    vim_api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })

    vim_api.nvim_set_keymap("n", "<leader>y", '"+y<CR>', { noremap = true, silent = true })
    vim_api.nvim_set_keymap("n", "<leader>Y", '"+Y<CR>', { noremap = true, silent = true })
    vim_api.nvim_set_keymap("n", "<leader>p", '"+p<CR>', { noremap = true, silent = true })
    vim_api.nvim_set_keymap("n", "<leader>P", '"+P<CR>', { noremap = true, silent = true })

    ------------------------------------------------------------------------------------------------------------ key map }

    ------------------------------------------------------------------------------------------------------------ { command
    vim_api.nvim_command("command! Reload :source ~/.config/nvim/init.lua")
    ------------------------------------------------------------------------------------------------------------ command }
end

----------------------------------------------------------- { debug
function _G.debug_option(...)
    print(vim_api.nvim_get_option(...))
end

function _G.show_vim_o()
    print(vim.inspect(vim.o))
end

function _G.show_vim_g(...)
    print(vim.inspect(vim.g[...]))
end

function _G.show_vim_b(...)
    print(vim.inspect(vim.b[...]))
end

function _G.get_buf_var(...)
    print(vim.api.nvim_buf_get_var(...))
end

----------------------------------------------------------- debug }

return Config
