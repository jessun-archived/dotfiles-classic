require("hop").setup {}

-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', 'f',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>"
    , {})
vim.api.nvim_set_keymap('n', 'F',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>"
    , {})
vim.api.nvim_set_keymap('n', 'g/',
    "<cmd>lua require'hop'.hint_patterns({ multi_windows = true })<cr>"
    , {})
vim.api.nvim_set_keymap('n', 'gl',
    "<cmd>lua require'hop'.hint_lines_skip_whitespace({ multi_windows = true })<cr>"
    , {})

