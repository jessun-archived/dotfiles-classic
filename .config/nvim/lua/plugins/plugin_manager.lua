local pluginManager = {}

function pluginManager:init()
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath,
        })
    end
    vim.opt.rtp:prepend(lazypath)
    require("lazy").setup({
        --|||||||||||||||||||||||||||||||||||||||||||| SETTINGS |||||||||||||||||||||||||||||||||||||||||||||
        { "neoclide/coc.nvim",             build = "yarn install" },

        --|||||||||||||||||||||||||||||||||||||||||||| EDITOR |||||||||||||||||||||||||||||||||||||||||||||||
        { "folke/todo-comments.nvim",      dependencies = "nvim-lua/plenary.nvim" }, -------- 高亮关键字
        { "numToStr/Comment.nvim" },                                                 -------- 注释插件

        { "kevinhwang91/nvim-hlslens" },                                             -------- 高亮关键字
        { "nvim-lualine/lualine.nvim" },                                             -------- 状态栏
        { "nvim-tree/nvim-tree.lua" },                                               -------- 目录树

        { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" }, -------- fuzzy finder
        { "fannheyward/telescope-coc.nvim" },                                        -------- telescope && coc

        { "petertriho/nvim-scrollbar" },                                             -------- 滚动条
        { "shellRaining/hlchunk.nvim" },                                             -------- 高亮代码块

        --|||||||||||||||||||||||||||||||||||||||||||| FILE |||||||||||||||||||||||||||||||||||||||||||||||
        {
            "iamcco/markdown-preview.nvim",
            config = function() vim.fn["mkdp#util#install"]() end,
            ft = "markdown"
        },                                                                                                   -------- markdown
        { "nathom/filetype.nvim",      config = function() vim.cmd([[runtime! autoload/dist/ft.vim]]) end }, -------- 替代filetype.vim
        { "neoclide/jsonc.vim" },                                                                            -------- JSONC 高亮

        --|||||||||||||||||||||||||||||||||||||||||||| GIT |||||||||||||||||||||||||||||||||||||||||||||||
        { "tpope/vim-fugitive" },
        -- { "sindrets/diffview.nvim",    dependencies = "nvim-lua/plenary.nvim" },
        -- { "akinsho/git-conflict.nvim", version = "*" },
        -- { "lewis6991/gitsigns.nvim" },

        --|||||||||||||||||||||||||||||||||||||||||||| NOTE |||||||||||||||||||||||||||||||||||||||||||||||
        -- { "renerocksai/telekasten.nvim" },
        --
        --|||||||||||||||||||||||||||||||||||||||||||| THEME |||||||||||||||||||||||||||||||||||||||||||||||
        { "shaunsingh/nord.nvim" },

        --|||||||||||||||||||||||||||||||||||||||||||| TESTING |||||||||||||||||||||||||||||||||||||||||||||||
        { "lewis6991/impatient.nvim" },                                          -------- lua 启动提速
        { "chentoast/marks.nvim" },                                              -------- marks 标记增强
        { "windwp/nvim-spectre",       dependencies = "nvim-lua/plenary.nvim" }, -------- 搜索插件
        { "echasnovski/mini.surround", version = false },                        -------- surround 快速编辑
        --
        --|||||||||||||||||||||||||||||||||||||||||||| DEPRECATED |||||||||||||||||||||||||||||||||||||||||||||||
        -- { "justinmk/vim-sneak" },

    })
end

return pluginManager
