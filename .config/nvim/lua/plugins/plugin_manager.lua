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
        { "fannheyward/telescope-coc.nvim" },
        { "folke/todo-comments.nvim",      dependencies = "nvim-lua/plenary.nvim" }, -------- 高亮关键字
        { "kevinhwang91/nvim-hlslens" },
        { "numToStr/Comment.nvim" },
        { "nvim-lualine/lualine.nvim" },
        { "nvim-tree/nvim-tree.lua" },
        { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
        { "petertriho/nvim-scrollbar" },
        { "shellRaining/hlchunk.nvim" },

        --|||||||||||||||||||||||||||||||||||||||||||| FILE |||||||||||||||||||||||||||||||||||||||||||||||
        {
            "iamcco/markdown-preview.nvim",
            config = function() vim.fn["mkdp#util#install"]() end,
            ft =
            "markdown"
        },
        { "nathom/filetype.nvim",       config = function() vim.cmd([[runtime! autoload/dist/ft.vim]]) end },
        { "neoclide/jsonc.vim" },

        --|||||||||||||||||||||||||||||||||||||||||||| GIT |||||||||||||||||||||||||||||||||||||||||||||||
        { "tpope/vim-fugitive" },
        { "sindrets/diffview.nvim",     dependencies = "nvim-lua/plenary.nvim" },
        { "akinsho/git-conflict.nvim",  version = "*" },
        { "lewis6991/gitsigns.nvim" },

        --|||||||||||||||||||||||||||||||||||||||||||| NOTE |||||||||||||||||||||||||||||||||||||||||||||||
        { "renerocksai/telekasten.nvim" },
        --
        --|||||||||||||||||||||||||||||||||||||||||||| THEME |||||||||||||||||||||||||||||||||||||||||||||||
        { "shaunsingh/nord.nvim" },

        --|||||||||||||||||||||||||||||||||||||||||||| TESTING |||||||||||||||||||||||||||||||||||||||||||||||
        { "lewis6991/impatient.nvim" },
        { "chentoast/marks.nvim" },
        { "windwp/nvim-spectre",        dependencies = "nvim-lua/plenary.nvim" },
        { 'echasnovski/mini.surround',  version = false },
        --
        --|||||||||||||||||||||||||||||||||||||||||||| DEPRECATED |||||||||||||||||||||||||||||||||||||||||||||||
        -- { "mswift42/vim-themes" },
        -- { "mkarmona/colorsbox" },
        -- { "flazz/vim-colorschemes" },
        -- { "rafi/awesome-vim-colorschemes" },
        -- { "rainglow/vim" }
        -- { "justinmk/vim-sneak" },
        -- { "renerocksai/calendar-vim" },

    })
end

return pluginManager
