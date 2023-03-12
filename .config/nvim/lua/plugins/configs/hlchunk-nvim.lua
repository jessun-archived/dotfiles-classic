require('hlchunk').setup({
    blank = {
        enable = false,
    },
    indent = {
        enable = false,
        use_treesitter = false,
        -- You can uncomment to get more indented line look like
        chars = {
            "│",
        },
        -- you can uncomment to get more indented line style
        style = {
            "#8B00FF",
        },
        exclude_filetype = {
            dashboard = true,
            help = true,
            lspinfo = true,
            packer = true,
            checkhealth = true,
            man = true,
            mason = true,
            NvimTree = true,
            plugin = true,
        },
    },
    line_num = {
        enable = false,
        support_filetypes = {
            "*"
        },
        style = "#806d9c",
    },
    chunk = {
        enable = true,
        support_filetypes = {
            "*"
        },
        chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "┌",
            left_bottom = "└",
            right_arrow = ">",
        },
        style = "#00ffff",
    },
    -- when overide the config, enable option must be contained
    -- enabled = true,
    -- -- if you want to use multiple indent line, just place them here, the key is like vertical_line + x, which x is a number
    -- chars = {
    --     vertical_line1 = "│",
    --     vertical_line2 = "¦",
    --     vertical_line3 = "┆",
    --     vertical_line4 = "┊",
    -- },
    -- hl_indent = {
    --     enable = true,
    --     style = {
    --         "#8B00FF",
    --     },
    -- },
})
