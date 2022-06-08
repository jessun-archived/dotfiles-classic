local Plugin = {}

local global = require("base/global")

function require_modules(path)
  local scan = require("plenary.scandir")
  local data = scan.scan_dir(path)
  for _, file_name in pairs(data) do
    file_name = get_lua_file_name(file_name)
    if is_not_empty(file_name) then
      module_name = get_module_name(file_name)
      require(module_name)
    end
  end
end

function get_lua_file_name(file)
  return file:match("^.+/(.+).lua$")
end

function is_not_empty(s)
  return s ~= nil
end

function get_module_name(file)
  path = "plugins/configs/" .. file
  return path
end

function Plugin:load_config()
  -- vim.cmd("source ~/.config/nvim/lua/plugins/configs/init.vim")
  require_modules(global.plugins_path)
end

return Plugin
