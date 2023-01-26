local vim_loop, vim_api = vim.loop, vim.api

local global = require("base/global")

local packer_dir = global.site_dir .. "/pack/packer/start/packer.nvim"
local Packer = {}

function Packer:init()
    local state = vim_loop.fs_stat(packer_dir)
    if not state then
        local cmd = "!git clone https://github.com/wbthomason/packer.nvim " .. packer_dir
        vim_api.nvim_command(cmd)
        vim_loop.fs_mkdir(global.site_dir .. "lua", 511, function()
            assert("make compile path dir failed")
        end)
    end
end

function Packer:start_up()
    vim.cmd([[packadd! packer.nvim]])
    local packer = require("packer")
    packer.startup(function()
        --||||||||||||||||||||||||||||||||||||||||| 插件管理 ||||||||||||||||||||||||||||||||||||||||||||
        use("wbthomason/packer.nvim") -------------------------------------------------------------------- 插件管理
        use({
            "neoclide/coc.nvim",
            run = "yarn install",
        }) ------------------------------------------------------------------------- coc.nvim
        -- use {
        --     'nathom/filetype.nvim',
        --     setup = [[vim.cmd('runtime! autoload/dist/ft.vim')]],
        -- }
        --
        --
        --|||||||||||||||||||||||||||||||||||||||||||| UI |||||||||||||||||||||||||||||||||||||||||||||||
        -- use("kyazdani42/nvim-web-devicons") -------------------------------------------------------------- 扩展图标
        use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }) -------------------------- 高亮关键字
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }) -------- 状态栏
        -- use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) ------------------------------------ 代码高亮
        use("petertriho/nvim-scrollbar") ----------------------------------------------------------------- 滚动条
        use("yaocccc/nvim-hlchunk") ---------------------------------------------------------------------- 线条当前块

        -------------------------------------------------------------------------------------------------- colorscheme {
        -- use("arcticicestudio/nord-vim") // VERY BAD
        -- use("karoliskoncevicius/sacredforest-vim")
        -- use("flazz/vim-colorschemes")
        -- use("mcchrish/vim-no-color-collections")
        -- use("mkarmona/colorsbox")
        -- use("mswift42/vim-themes")
        -- use("projekt0n/github-nvim-theme")
        -- use("rafi/awesome-vim-colorschemes")
        -- use("rainglow/vim")
        -- use("rmehri01/onenord.nvim")
        use("shaunsingh/nord.nvim")
        -- use("easysid/mod8.vim")
        -------------------------------------------------------------------------------------------------- colorscheme }
        --
        --
        --||||||||||||||||||||||||||||||||||||||||| 编码工具 ||||||||||||||||||||||||||||||||||||||||||||
        use({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })

        use("numToStr/Comment.nvim") -------------------------------------------------------------------- 代码注释
        -- use("liuchengxu/vista.vim") --------------------------------------------------------------------- 代码大纲
        use("neoclide/jsonc.vim") ----------------------------------------------------------------------- jsonc 文件高亮

        use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" }) --------------------------- 差异比较
        use("tpope/vim-fugitive")
        --
        --
        --||||||||||||||||||||||||||||||||||||||||| 文本操作 ||||||||||||||||||||||||||||||||||||||||||||
        -- use("github/copilot.vim") ----------------------------------------------------------------------- Github AI 补全
        --
        --
        --||||||||||||||||||||||||||||||||||||||||| 目录管理 ||||||||||||||||||||||||||||||||||||||||||||
        -- use({
        --     "kyazdani42/nvim-tree.lua", ------------------------------------------------------------------ 文件树
        --     requires = {
        --         "kyazdani42/nvim-web-devicons", -- optional, for file icons
        --     },
        -- })
        --
        --
        --||||||||||||||||||||||||||||||||||||||||| 模糊搜索 ||||||||||||||||||||||||||||||||||||||||||||
        use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } }) ------------ 模糊搜索
        use({ "fannheyward/telescope-coc.nvim" })
        use({ "kevinhwang91/nvim-hlslens" })
        use("justinmk/vim-sneak")
        --
        --
        --||||||||||||||||||||||||||||||||||||||||| 辅助工具 ||||||||||||||||||||||||||||||||||||||||||||
        use("dstein64/vim-startuptime") ----------------------------------------------------------------- 启动时间
        --
        --
        --||||||||||||||||||||||||||||||||||||||||| TESTING |||||||||||||||||||||||||||||||||||||||||||||
        -- use("smjonas/live-command.nvim") ------------------------------------------------------------------ 实时显示命令变化
        use({ "akinsho/git-conflict.nvim", tag = "*" })
        -- use("eckon/treesitter-current-functions") ------------------------------------------------------ 当前函数 ?
        -- use("nvim-treesitter/nvim-treesitter-textobjects") --------------------------------------------- 文本对象 ?
        -- use("RRethy/nvim-treesitter-textsubjects") ----------------------------------------------------- 文本对象 ?
        -- use("nvim-treesitter/nvim-treesitter-context")
        use("machakann/vim-sandwich") ---------------------=--------------------------------------------- 快速两端文本 ?
        --
        --
        --||||||||||||||||||||||||||||||||||||||||| DEPRECATED ||||||||||||||||||||||||||||||||||||||||||
        -- use("koenverburg/peepsight.nvim") ------------------------------------------------------------ 视觉聚焦
        -- use("lukas-reineke/indent-blankline.nvim")
        -- use("sunjon/Shade.nvim")
        -- use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
        -- use({
        -- 	"lewis6991/gitsigns.nvim",
        -- 	-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
        -- })
    end)
end

return Packer
