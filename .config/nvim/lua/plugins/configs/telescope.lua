require("telescope").setup {
    defaults = {
        -- layout_strategy = "cursor",
        layout_strategy = "vertical",
        layout_config = {
            width = 0.9
            -- other layout configuration here
        },
        borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
        dynamic_preview_title = true
    },
    pickers = {},
    extensions = {
        tmuxinator = {
            select_action = "switch", -- | 'stop' | 'kill'
            stop_action = "stop", -- | 'kill'
            disable_icons = true
        },
        -- octo = {}
    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require("telescope").load_extension("fzf")
-- require('telescope').load_extension('neoclip')

-- vim.api.nvim_set_keymap("n", "<leader>t<leader>", ":Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>t<leader>",
    ":lua require('telescope.builtin').find_files({enable_preview=false})<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>t/", ":Telescope live_grep<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>t/", ":Telescope live_grep<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>tb", ":Telescope buffers<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tb", ":Telescope buffers<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>th", ":Telescope help_tags<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>th", ":Telescope help_tags<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>tc", ":Telescope commands<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tc", ":Telescope commands<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>tm", ":Telescope marks<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tm", ":Telescope marks<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>tk", ":Telescope keymaps<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tk", ":Telescope keymaps<CR>", { noremap = true, silent = true })
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
