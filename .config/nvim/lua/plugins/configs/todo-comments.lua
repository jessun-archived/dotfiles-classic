require("todo-comments").setup(
    {
        colors = {
            error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
            warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
            info = { "DiagnosticInfo", "#2563EB" },
            hint = { "DiagnosticHint", "#10B981" },
            default = { "Identifier", "#7C3AED" },
        },
        signs = true, -- show icons in the signs column
        keywords = {
            FIX = {
                icon = "", -- icon used for the sign, and in search results
                color = "#DC2626", -- can be a hex color, or a named color (see below)
                alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } -- a set of other keywords that all map to this FIX keywords
                -- signs = false, -- configure signs for some keywords individually
            },
            TODO = { icon = "",
                color = "#FBBF24",
                alt = { "todo" } },
            HACK = { icon = "",
                color = "#FBBF24"
            },
            WARN = { icon = "",
                color = "#FBBF24",
                alt = { "Warn", "WARNING", "attention", "Attention", "ATTENTION" } },
            QUES = { icon = "",
                color = "#FBBF24",
                alt = { "QUES", "Ques", "ques" } },
            PERF = { icon = "",
                color = "#7C3AED",
                alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" }
            },
            NOTE = { icon = "",
                color = "#10B981",
                alt = { "INFO", "summary", "note", "document","SUMMARY", "DOCUMENT", "DOC", "doc" }},
            Deprecated = {
                icon = "", -- icon used for the sign, and in search results
                color = "#DC2626", -- can be a hex color, or a named color (see below)
                alt = { "DEPRECATED", "deprecated" } -- a set of other keywords that all map to this FIX keywords
                -- signs = false, -- configure signs for some keywords individually
            }
        },
        -- highlight = {
        --     pattern = [[\b(KEYWORDS):]], -- pattern or table of patterns, used for highlightng (vim regex)
        --     keyword = "bg", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
        --     comments_only = true, -- uses treesitter to match keywords in comments only
        --     max_line_len = 400, -- ignore lines longer than this
        -- },
        pattern = [[\b(KEYWORDS):]], -- ripgrep regex

        search = {
            command = "rg",
            args = {
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
            },
        }
    }
)
