local plugins_configs = require("plugins/configs")
local plugins_manager = require("plugins/plugin_manager")

local Plugins = {}

function Plugins.init()
    plugins_manager.init()
    plugins_configs.load_config()
end

return Plugins
