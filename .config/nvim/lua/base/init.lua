local global = require("base/global")
local base_config = require("base/config")

local Base = {}

function Base.init()
  global.createdir()
  base_config.load_config()
end

return Base
