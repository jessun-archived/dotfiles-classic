require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "l", action = "edit" },
                { key = "h", action = "close_node" },
            },
        },
        number = false,
        signcolumn = "yes",
        -- float = {
        -- 	enable = false,
        -- 	open_win_config = {
        -- 		relative = "editor",
        -- 		border = "rounded",
        -- 		width = 30,
        -- 		height = 30,
        -- 		row = 1,
        -- 		col = 1,
        -- 	},
        -- },
    },
    renderer = {
        group_empty = true,
        indent_width = 1,
        -- indent_markers = {
        -- 	enable = true,
        -- 	inline_arrows = true,
        -- 	icons = {
        -- 		corner = "└",
        -- 		edge = "│",
        -- 		item = "│",
        -- 		bottom = "─",
        -- 		none = " ",
        -- 	},
        -- },
        icons = {
            webdev_colors = true,
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        debounce_delay = 50,
        icons = {
            hint = "·",
            info = "·",
            warning = "!",
            error = "x",
        },
    },
    filters = {
        dotfiles = false,
    },
    git = {
        ignore = false,
    },
})

vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
