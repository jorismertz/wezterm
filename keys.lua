local wezterm = require('wezterm')

return {
  {
    key = "t",
    mods = "CTRL",
    action = wezterm.action {
      SpawnTab = "CurrentPaneDomain",
    }
  },
  {
    key = "q",
    mods = "CTRL",
    action = wezterm.action {
      CloseCurrentTab = {
        confirm = false
      }
    }
  },
  {
    key = "i",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ShowDebugOverlay
  }
}
for i = 1, 8 do
	table.insert(keys, {
		key = tostring(i),
		mods = "ALT",
		action = wezterm.action.ActivateTab(i - 1),
	})
end
