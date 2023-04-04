local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        -- layout_strategy = "cursor",
        theme = "get_ivy",
        layout_config = {
            width = 0.999,
            height = 0.999,
            -- other layout configuration here
        },
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        dynamic_preview_title = true,
    },
    pickers = {},
    extensions = {
        tmuxinator = {
            select_action = "switch", -- | 'stop' | 'kill'
            stop_action = "stop",     -- | 'kill'
            disable_icons = true,
        },
        coc = {
            -- theme = "ivy",
            -- prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
        },
    },
})

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require("telescope").load_extension("fzf")
require("telescope").load_extension("coc")

vim.api.nvim_set_keymap("n", "<leader>t<leader>", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>t/", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tb", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>th", ":Telescope help_tags<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":Telescope commands<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tm", ":Telescope marks<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tk", ":Telescope keymaps<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tr", ":Telescope registers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tt", ":Telescope<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>i", ":Telescope octo issues<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
    "n",
    -- "<leader>t*",
    "<leader>t*",
    ":lua require('telescope.builtin').live_grep({ default_text = vim.fn.expand('<cword>') })<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
    "n",
    -- "<leader>t*",
    "<leader>to",
    ":lua require('telescope.builtin').colorscheme({enable_preview=true})<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>tf", ":GetCurrentFunctions<CR>", { noremap = true, silent = true }) ---- https://github.com/eckon/treesitter-current-functions

-- shortcuts
vim.api.nvim_set_keymap("n", "<leader>k", ":Telescope keymaps<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><leader>", ":Telescope find_files<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>/", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>b", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", '"', ":Telescope registers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
    "n",
    -- "<leader>t*",
    "<leader>*",
    ":lua require('telescope.builtin').live_grep({ default_text = vim.fn.expand('<cword>') })<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>td", ":Telescope coc workspace_diagnostics<CR>", { noremap = true, silent = true })
