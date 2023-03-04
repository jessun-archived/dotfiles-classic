-- local packer = require("plugins/packer")
local plugins_configs = require("plugins/configs")
local plugins_manager = require("plugins/plugin_manager")

local Plugins = {}

function Plugins.init()
  -- packer.init()
  -- packer.start_up()
  plugins_manager.init()
  plugins_configs.load_config()
end

return Plugins
