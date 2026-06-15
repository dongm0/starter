local M = {}

function M.getRandom()
  local items = require("custom-ascii.data");
  math.randomseed(os.time())
  local randomIndex = math.random(1, #items)
  local random = items[randomIndex]
  return random
end

return M
