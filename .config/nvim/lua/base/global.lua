----------------------------------------------------------- { global
--[[
global {
  is_mac = false,
  is_linux = true,
  is_windows = false,
  home = "~",
  config_dir = "~/.config/nvim"
  cache_dir = "~/.cache/nvim/",
  config_modules_dir = "~/.config/nvim/modules",
  site_dir = "~/.local/share/nvim/site",
}
]] --
local Global = {}

function Global:load_variables()
    self.is_mac = os_name == "Darwin"
    self.is_linux = os_name == "Linux"
    self.is_windows = os_name == "Windows"

    local path_sep = self.is_windows and "\\" or "/"

    local home = self.is_windows and os.getenv("USERPROFILE") or os.getenv("HOME")
    self.home = home
    self.config_dir = vim.fn.stdpath("config")
    self.cache_dir = home .. path_sep .. ".cache" .. path_sep .. "nvim"
    self.modules_dir = self.config_dir .. path_sep .. "modules"
    self.site_dir = string.format("%s/site", vim.fn.stdpath("data"))
    self.plugins_path = string.format("%s/lua/plugins/configs", vim.fn.stdpath("config"))
end

--

--[[
create directories:
{
"~/.cache/nvim/backup",
"~/.cache/nvim/session",
"~/.cache/nvim/swap",
"~/.cache/nvim/tags",
"~/.cache/nvim/undo",
}
]]
function Global:createdir()
    local cache_sub_dirs = {
        Global.cache_dir .. "backup",
        Global.cache_dir .. "session",
        Global.cache_dir .. "swap",
        Global.cache_dir .. "tags",
        Global.cache_dir .. "undo"
    }
    if vim.fn.isdirectory(Global.cache_dir) == 0 then
        os.execute("mkdir -p " .. Global.cache_dir)
        for _, v in pairs(cache_sub_dirs) do
            if vim.fn.isdirectory(v) == 0 then
                os.execute("mkdir -p " .. v)
            end
        end
    end
end

----------------------------------------------------------- global }

Global:load_variables()

----------------------------------------------------------- { debug
function _G.show_global()
    print(vim.inspect(Global))
end

function _G.show_var(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end

----------------------------------------------------------- debug }

return Global
