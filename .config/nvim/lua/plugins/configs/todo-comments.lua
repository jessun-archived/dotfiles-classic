require("todo-comments").setup({
	colors = {
		error = { "DiagnosticError", "ErrorMsg", "#BF616A" },
		warning = { "DiagnosticWarning", "WarningMsg", "#B48EAD" },
		-- warning = { "DiagnosticWarning", "WarningMsg", "#EBCB8B" },
		info = { "DiagnosticInfo", "#5E81AC" },
		hint = { "DiagnosticHint", "#4C566A" },
		default = { "Identifier", "#ECEFF4" },
	},
	signs = false, -- show icons in the signs column
	sign_priority = 11, -- sign priority
	keywords = {
		FIX = {
			color = "error", -- can be a hex color, or a named color (see below)
			alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
			-- signs = false, -- configure signs for some keywords individually
		},
		TODO = { color = "error" },
		HACK = { color = "warning" },
		WARN = { color = "warning", alt = { "WARNING", "XXX", "Deprecated" } },
		PERF = { color = "warning", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
		NOTE = { color = "info", alt = { "INFO", "summary", "param" } },
		TEST = { color = "warning", alt = { "TESTING", "PASSED", "FAILED" } },
	},

	pattern = "[[\b(KEYWORDS):]]", -- ripgrep regex

	search = {
		command = "rg",
		args = {
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
		},
	},
})
