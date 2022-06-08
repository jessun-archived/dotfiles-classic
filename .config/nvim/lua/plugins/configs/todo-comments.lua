require("todo-comments").setup(
  {
    signs = false, -- show icons in the signs column
    keywords = {
      FIX = {
        icon = "", -- icon used for the sign, and in search results
        color = "error", -- can be a hex color, or a named color (see below)
        alt = {"FIXME", "BUG", "FIXIT", "ISSUE"} -- a set of other keywords that all map to this FIX keywords
        -- signs = false, -- configure signs for some keywords individually
      },
      TODO = {icon = "", color = "warning", alt = {"todo"}},
      HACK = {icon = "", color = "warning"},
      WARN = {icon = "", color = "warning", alt = {"Warn", "WARNING"}},
      QUES = {icon = "", color = "warning", alt = {"QUES", "Ques", "ques"}},
      PERF = {icon = "", alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
      NOTE = {icon = "", color = "hint", alt = {"INFO", "oOte"}},
      Deprecated = {
        icon = "", -- icon used for the sign, and in search results
        color = "error", -- can be a hex color, or a named color (see below)
        alt = {"DEPRECATED", "deprecated"} -- a set of other keywords that all map to this FIX keywords
        -- signs = false, -- configure signs for some keywords individually
      }
    }
  }
)
