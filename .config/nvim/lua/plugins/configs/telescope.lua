local actions = require("telescope.actions")

local full_theme = {
	winblend = 20,
	width = 0.8,
	show_line = false,
	prompt_prefix = "TS Symbols>",
	prompt_title = "",
	results_title = "",
	preview_title = "",
	borderchars = {
		prompt = { "▀", "▐", "▄", "▌", "▛", "▜", "▟", "▙" },
		results = { "▀", "▐", "▄", "▌", "▛", "▜", "▟", "▙" },
		preview = { "▀", "▐", "▄", "▌", "▛", "▜", "▟", "▙" },
	},
}

require("telescope").setup({
	defaults = {
		-- layout_strategy = "cursor",
		layout_strategy = "vertical",
		layout_config = {
			width = 0.9,
			-- other layout configuration here
		},
		borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
		dynamic_preview_title = true,
	},
	pickers = {},
	extensions = {
		tmuxinator = {
			select_action = "switch", -- | 'stop' | 'kill'
			stop_action = "stop", -- | 'kill'
			disable_icons = true,
		},
		-- octo = {}
	},
})

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require("telescope").load_extension("fzf")
-- require('telescope').load_extension('neoclip')

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
vim.api.nvim_set_keymap("n", "<leader><leader>", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>/", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>b", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	-- "<leader>t*",
	"<leader>*",
	":lua require('telescope.builtin').live_grep({ default_text = vim.fn.expand('<cword>') })<CR>",
	{ noremap = true, silent = true }
)
