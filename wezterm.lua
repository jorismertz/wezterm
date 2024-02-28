local wezterm = require('wezterm')
local keys = require("keys")
local rosepine = require('lua.theme')
local os = require('lua.os')

local config = {
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = os.get({ linux = 22.0, macos = 14.0, }),
  max_fps = os.get({ linux = 165, macos = 60, }),
  colors = rosepine.colors(),
  window_frame = rosepine.window_frame(),
  hide_tab_bar_if_only_one_tab = true,
  keys = keys,
}

return config
