local colors = {
    red = "#ca1243",
    grey = "#a0a1a7",
    black = "#383a42",
    white = "#f3f3f3",
    light_green = "#007708",
    orange = "#fe8019",
    orange1 = "#FAB005",
    orange2 = "FF7000",
    green = "#8ec07c",
    dark_green = "#196F3D",
    ----
    yellow = "#FFFF00",
    nord1 = "#2E3440",
    nord2 = "#3B4252",
    nord3 = "#434C5E",
    nord4 = "#4C566A",
    seagreen = "#93E9BE",
    git_add_green = "D7FFAF",
    git_replace_blue = "#7AA6DA",
    git_delete_red = "E95678"
}

local function search_result()
    if vim.v.hlsearch == 0 then
        return ""
    end
    local last_search = vim.fn.getreg("/")
    if not last_search or last_search == "" then
        return ""
    end
    local searchcount = vim.fn.searchcount { maxcount = 9999 }
    return last_search .. "(" .. searchcount.current .. "/" .. searchcount.total .. ")"
end

local function modified()
    if vim.bo.modified then
        return "+"
    elseif vim.bo.modifiable == false or vim.bo.readonly == true then
        return "-"
    end
    return ""
end

require("lualine").setup {
    options = {
        theme = 'nord',
        icons_enabled = false,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" }
    },
    sections = {
        lualine_a = {
            {
                "mode",
                fmt = function(str)
                    return str:sub(1, 1)
                end
            }
        },
        lualine_b = {
            {
                "branch",
            },
            {
                "diagnostics",
                source = { "nvim", "nvim_diagnostic", "coc" },
                diagnostics_color = {
                    error = "DiagnosticError",
                    warn = "DiagnosticWarn",
                    info = "DiagnosticInfo",
                    hint = "DiagnosticHint"
                },
                symbols = { error = "E", warn = "W", info = "I", hint = "H", debug = "D" },
                colored = true, -- Displays diagnostics status in color if set to true.
                always_visible = true, -- Show diagnostics even if there are none.
                -- update_in_insert = true -- Update diagnostics in insert mode.
            },
            {
                "diff",
                colored = true, -- Displays a colored diff status if set to true
                symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
                diff_color = {
                    added    = 'DiffAdd', -- Changes the diff's added color
                    modified = 'DiffChange', -- Changes the diff's modified color
                    removed  = 'DiffDelete', -- Change
                },
            },
            {
                "%w",
                cond = function()
                    return vim.wo.previewwindow
                end
            },
            -- {
            --     "%r",
            --     cond = function()
            --         return vim.bo.readonly
            --     end
            -- },
            {
                "%q",
                cond = function()
                    return vim.bo.buftype == "quickfix"
                end
            }
        },
        lualine_c = { "aerial" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
            {
                "%l:%c",
                -- color = { fg = colors.grey, bg = colors.nord3 }
            },
            {
                "%p%%/%L",
                -- color = { fg = colors.grey, bg = colors.nord3 }
            },
        }
    },
    tabline = {
        lualine_a = {
            {
                "filename",
                file_status = false,
                -- color = { fg = colors.grey, bg = colors.nord2 },
                path = 2
            }
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
            {
                search_result,
                -- color = { fg = colors.grey, bg = colors.nord3 }
            },
            {
                "filetype",
                -- color = { fg = colors.grey, bg = colors.nord3 }
            }
        },
    }
}
