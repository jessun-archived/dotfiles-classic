require "nvim-treesitter.configs".setup {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    -- ensure_installed = "maintained",
    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = true,
    -- List of parsers to ignore installing
    -- ignore_install = {"javascript"},
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        -- list of language that will be disabled
        disable = { "go" },
        -- disable = {"lua"},
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false
    },
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
            selection_modes = {
                ['@parameter.outer'] = 'v', -- charwise
                ['@function.outer'] = 'V', -- linewise
                ['@class.outer'] = '<c-v>', -- blockwise
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>a"] = "@parameter.inner"
            },
            swap_previous = {
                ["<leader>A"] = "@parameter.inner"
            }
        },
        move = { --- 函数间跳转
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                -- ["]m"] = "@function.outer",
                -- ["]]"] = "@class.outer"
                ["]f"] = "@function.outer",
                ["]l"] = "@class.outer"
            },
            goto_next_end = {
                ["]F"] = "@function.outer",
                ["]L"] = "@class.outer"
            },
            goto_previous_start = {
                ["[f"] = "@function.outer",
                ["[l"] = "@class.outer"
            },
            goto_previous_end = {
                ["[F"] = "@function.outer",
                ["[L"] = "@class.outer"
            }
        },
        lsp_interop = {
            enable = true,
            border = "none",
            peek_definition_code = {
                ["<leader>df"] = "@function.outer",
                ["<leader>dF"] = "@class.outer"
            }
        }
    },
    textsubjects = { --- 智能选区，按照语义缩放选区
        enable = true,
        prev_selection = ",", -- (Optional) keymap to select the previous selection
        keymaps = {
            ["."] = "textsubjects-smart",
            [";"] = "textsubjects-container-outer",
            ["i;"] = "textsubjects-container-inner"
        }
    }
}

-- vim.api.nvim_set_keymap("n", "<leader>cf", ":GetCurrentFunctions<CR>", { noremap = true, silent = true }) ---- https://github.com/eckon/treesitter-current-functions
