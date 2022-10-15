local vim = vim
local vim_loop, vim_api = vim.loop, vim.api

local global = require("base/global")

local packer_dir = global.site_dir .. "/pack/packer/start/packer.nvim"
local Packer = {}

function Packer:init()
    local state = vim_loop.fs_stat(packer_dir)
    if not state then
        local cmd = "!git clone https://github.com/wbthomason/packer.nvim " .. packer_dir
        vim_api.nvim_command(cmd)
        vim_loop.fs_mkdir(
            global.site_dir .. "lua",
            511,
            function()
                assert("make compile path dir failed")
            end
        )
    end
end

function Packer:start_up()
    vim.cmd [[packadd! packer.nvim]]
    local packer = require("packer")
    packer.startup(
        function()
            --||||||||||||||||||||||||||||||||||||||||| 插件管理 ||||||||||||||||||||||||||||||||||||||||||||
            use "wbthomason/packer.nvim" -------------------------------------------------------------------- 插件管理
            use "neoclide/coc.nvim" ------------------------------------------------------------------------- coc.nvim
            --
            --
            --|||||||||||||||||||||||||||||||||||||||||||| UI |||||||||||||||||||||||||||||||||||||||||||||||
            -- use "chentoast/marks.nvim" ------------------------------------------------------------------------ 文本标记
            use "kyazdani42/nvim-web-devicons" -------------------------------------------------------------- 扩展图标
            use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" } -------------------------- 高亮关键字
            use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } } -- 状态栏
            use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } ------------------------------------ 代码高亮
            use { "winston0410/range-highlight.nvim", requires = "winston0410/cmd-parser.nvim" } ------------ 高亮选中区域
            use 'neoclide/jsonc.vim'
            use "shaunsingh/nord.nvim"
            use "petertriho/nvim-scrollbar"
            use "psliwka/vim-smoothie"

            -- use { 'Everblush/everblush.nvim', as = 'everblush' }
            -- use 'stefanvanburen/rams.vim'
            -- use 'cormacrelf/vim-colors-github'
            -- use 'flazz/vim-colorschemes' -- including "github", conflict
            -- use 'rafi/awesome-vim-colorschemes'
            -- use 'rainglow/vim'
            -- use "jessun/mod8" ------------------------------------------------------------------------------- colorscheme
            --
            --
            --||||||||||||||||||||||||||||||||||||||||| 文本操作 ||||||||||||||||||||||||||||||||||||||||||||
            use "machakann/vim-sandwich" ---------------------=---------------------------------------------- 快速两端文本 ?
            use "github/copilot.vim" ------------------------------------------------------------------------ Github AI 补全
            use "iamcco/markdown-preview.nvim"
            -- use { "nvim-orgmode/orgmode" } ------------------------------------------------------------------ Org 文档
            -- use { "akinsho/org-bullets.nvim" } -------------------------------------------------------------- Org 文档
            -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
            -- use "junegunn/vim-easy-align"
            --
            --
            --||||||||||||||||||||||||||||||||||||||||| 辅助工具 ||||||||||||||||||||||||||||||||||||||||||||
            use "dstein64/vim-startuptime"
            -- use "rcarriga/nvim-notify"
            --
            --
            --||||||||||||||||||||||||||||||||||||||||| 目录管理 ||||||||||||||||||||||||||||||||||||||||||||
            use {
                'kyazdani42/nvim-tree.lua',
                requires = {
                    'kyazdani42/nvim-web-devicons', -- optional, for file icons
                },
                tag = 'nightly' -- optional, updated every week. (see issue #1193)
            }
            --
            --||||||||||||||||||||||||||||||||||||||||||| GIT |||||||||||||||||||||||||||||||||||||||||||||||
            -- use {"sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim"} --------------------------- 差异比较
            use "tpope/vim-fugitive"
            --
            --
            --||||||||||||||||||||||||||||||||||||||||| 编码工具 ||||||||||||||||||||||||||||||||||||||||||||
            -- use "stevearc/aerial.nvim" ---------------------------------------------------------------------- 代码大纲
            use "numToStr/Comment.nvim" --------------------------------------------------------------------- 代码注释
            use "liuchengxu/vista.vim"
            --
            --
            --||||||||||||||||||||||||||||||||||||||||| 模糊搜索 ||||||||||||||||||||||||||||||||||||||||||||
            use { "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } } ------------- 模糊搜索
            -- use "danielpieper/telescope-tmuxinator.nvim" ---------------------------------------------------- tmuxinator 跳转
            use "eckon/treesitter-current-functions" -------------------------------------------------------- 当前函数 ?
            use "nvim-treesitter/nvim-treesitter-textobjects" ----------------------------------------------- 文本对象 ?
            use "RRethy/nvim-treesitter-textsubjects" ------------------------------------------------------- 文本对象 ?
            use "nvim-treesitter/nvim-treesitter-context"
            use "justinmk/vim-sneak"
            -- use { "phaazon/hop.nvim", branch = 'v2' }
            --
            --||||||||||||||||||||||||||||||||||||||||| 性能优化 ||||||||||||||||||||||||||||||||||||||||||||
            use "nathom/filetype.nvim" ---------------------------------------------------------------------- filetype 性能优化
        end
    )
end

return Packer
