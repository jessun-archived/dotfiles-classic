local colors = {
	black = "#383a42",
	dark_green = "#196F3D",
	grey = "#a0a1a7",

	green = "#8ec07c",
	light_green = "#007708",

	orange = "#fe8019",
	orange1 = "#FAB005",
	orange2 = "#FF7000",

	red = "#ca1243",
	seagreen = "#93E9BE",
	white = "#f3f3f3",
	yellow = "#FFFF00",

	nord1 = "#3B4252",
	nord13 = "#EBCB8B",
	nord3 = "#4C566A",
	nord5 = "#E5E9F0",
	nord6 = "#ECEFF4",
	nord7 = "#8FBCBB",
	nord8 = "#88C0D0",
	nord_bg = "#2E3440",

	default_diagnostic_error = "#e32636",
	default_diagnostic_warn = "#ffa500",
	default_diagnostic_info = "#ffffff",
	default_diagnostic_hint = "#273faf",

	default_git_diff_add = "#90ee90",
	default_git_diff_change = "#f0e130",
	default_git_diff_delete = "#ff0038",

	nord_aurora_red = "#BF616A",
	nord_aurora_orange = "#D08770",
	nord_aurora_yellow = "#EBCB8B",
	nord_aurora_green = "#A3BE8C",
	nord_aurora_pink = "#B48EAD",

	nord_snow_storm_white1 = "#D8DEE9",
	nord_snow_storm_white2 = "#E5E9F0",
	nord_snow_storm_white3 = "#ECEFF4",

	nord_frost_green1 = "#8FBCBB",
	nord_frost_green2 = "#88C0D0",
	nord_frost_green3 = "#81A1C1",
	nord_frost_green4 = "#5E81AC",
}

-- show breadcrumbs if available
local function breadcrumbs()
	local items = vim.b.coc_nav
	local t = { "" }
	for k, v in ipairs(items) do
		setmetatable(v, {
			__index = function(table, key)
				return " "
			end,
		})
		t[#t + 1] = " %#"
			.. (v.highlight or "Normal")
			.. "#"
			.. (type(v.label) == "string" and v.label .. " " or "")
			.. "%#NonText#"
			.. (v.name or "")
		if next(items, k) ~= nil then
			t[#t + 1] = "%#StatusLineNC# "
		end
	end
	t[#t + 1] = "%#EndOfBuffer#%L  "
	return table.concat(t)
end

local function search_result()
	if vim.v.hlsearch == 0 then
		return ""
	end
	local last_search = vim.fn.getreg("/")
	if not last_search or last_search == "" then
		return ""
	end
	local searchcount = vim.fn.searchcount({ maxcount = 9999 })
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

local custom_nord = require("lualine.themes.nord")
custom_nord.normal.a.bg = colors.nord_bg
custom_nord.normal.a.fg = colors.nord3
custom_nord.normal.a.gui = ""

custom_nord.insert.a.bg = colors.nord_bg
custom_nord.insert.a.fg = colors.nord3
custom_nord.insert.a.gui = ""

custom_nord.normal.b.bg = colors.nord_bg
custom_nord.normal.c.bg = colors.nord_bg

require("lualine").setup({
	options = {
		theme = custom_nord,
		icons_enabled = false,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		refresh = {
			statusline = 1000,
			tabline = 300,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(str)
					return str:sub(1, 1)
				end,
			},
		},
		lualine_b = {
			{
				"diagnostics",
				sources = {
					--	"nvim_lsp",
					--	"nvim_diagnostic",
					"coc_workspace",
					--	"nvim_workspace_diagnostic",
					--  "ale",
					--	"vim_lsp",
				},
				diagnostics_color = {
					-- error = "DiagnosticError",
					-- warn = "DiagnosticWarn",
					-- info = "DiagnosticInfo",
					-- hint = "DiagnosticHint"
					error = { bg = colors.nord_aurora_red, fg = colors.nord_snow_storm_white1 },
					warn = { bg = colors.nord_aurora_yellow, fg = colors.nord1 },
					info = { bg = colors.nord_aurora_green, fg = colors.nord1 },
					hint = { bg = colors.nord3, fg = colors.nord_snow_storm_white1 },
				},
				symbols = { error = "E", warn = "W", info = "I", hint = "H", debug = "D" },
				colored = true, -- Displays diagnostics status in color if set to true.
				always_visible = true, -- Show diagnostics even if there are none.
				-- update_in_insert = true -- Update diagnostics in insert mode.
			},
			{ "branch", color = { bg = colors.nord_bg, fg = colors.nord3 } },
			{
				"diff",
				colored = true, -- Displays a colored diff status if set to true
				symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
				diff_color = {
					added = { bg = colors.nord_bg, fg = colors.nord_aurora_green },
					modified = { bg = colors.nord_bg, fg = colors.nord_aurora_yellow },
					removed = { bg = colors.nord_bg, fg = colors.nord_aurora_red },
				},
			},
		},
		lualine_c = {
			{
				"filename",
				file_status = true,
				color = { fg = colors.nord3, bg = colors.nord_bg },
				path = 3,
			},
		},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {
			{ search_result },
			{ "location" },
			{ "progress" },
			{ "filetype" },
		},
	},
	tabline = {
		lualine_a = {
			{
				"buffers",
				show_filename_only = true, -- Shows shortened relative path when set to false.
				hide_filename_extension = false, -- Hide filename extension when set to true.
				show_modified_status = false, -- Shows indicator when the buffer is modified.

				mode = 2, -- 0: Shows buffer name
				-- 1: Shows buffer index
				-- 2: Shows buffer name + buffer index
				-- 3: Shows buffer number
				-- 4: Shows buffer name + buffer number

				max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
				-- it can also be a function that returns
				-- the value of `max_length` dynamically.
				filetype_names = {
					TelescopePrompt = "Telescope",
					dashboard = "Dashboard",
					packer = "Packer",
					fzf = "FZF",
					alpha = "Alpha",
				}, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

				buffers_color = {
					-- Same values as the general color option can be used here.
					active = "lualine_b_normal",
					inactive = "lualine_a_normal",
				},

				symbols = {
					-- modified = " ●", -- Text to show when the buffer is modified
					-- alternate_file = "#", -- Text to show to identify the alternate file
					-- directory = "", -- Text to show when the buffer is a directory
				},
			},
		},
		lualine_x = {},
		lualine_y = {
			--     {
			--         "NearestMethodOrFunction",
			--         color = { fg = colors.nord_snow_storm_white1, bg = colors.nord_bg }
			--     }
			--
		},
		lualine_z = {
			-- breadcrumbs
		},
	},
})
