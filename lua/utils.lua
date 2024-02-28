local wezterm = require('wezterm')
local M = {}

M.lookup_in_table = function(table, key)
  for _, v in pairs(table) do
    if v[1] == key then
      return v[2]
    end
  end
end

return M
