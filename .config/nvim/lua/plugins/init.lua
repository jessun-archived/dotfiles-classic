local packer = require("plugins/packer")
local plugins_configs = require("plugins/configs")

local Plugins = {}

function Plugins.init()
  packer.init()
  packer.start_up()
  plugins_configs.load_config()
end

return Plugins
