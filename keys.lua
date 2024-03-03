local wezterm = require("wezterm")
local act = wezterm.action

local keys = {
	{
		key = "t",
		mods = "ALT",
		action = act({
			SpawnTab = "CurrentPaneDomain",
		}),
	},
	{
		key = "w",
		mods = "ALT",
		action = act({
			CloseCurrentPane = {
				confirm = false,
			},
		}),
	},
	{
		key = "i",
		mods = "ALT",
		action = act.ShowDebugOverlay,
	},
	{
		key = "s",
		mods = "ALT",
		action = act.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		key = "v",
		mods = "ALT",
		action = act.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		key = "h",
		mods = "ALT|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "ALT|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "ALT|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "ALT|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "h",
		mods = "ALT|CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},

	{
		key = "l",
		mods = "ALT|CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},

	{
		key = "k",
		mods = "ALT|CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "j",
		mods = "ALT|CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "z",
		mods = "ALT",
		action = act.TogglePaneZoomState,
	},
}

for i = 1, 8 do
	table.insert(keys, {
		key = tostring(i),
		mods = "ALT",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return keys
