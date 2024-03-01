local M = {}

M.palette = {
	base = "#232136",
	overlay = "#393552",
	muted = "#6e6a86",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ea9a97",
	pine = "#3e8fb0",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	highlight_high = "#56526e",
}

local palette = M.palette

local active_tab = {
	bg_color = palette.overlay,
	fg_color = palette.text,
}

local inactive_tab = {
	bg_color = palette.base,
	fg_color = palette.muted,
}

function M.colors()
	return {
		foreground = palette.text,
		background = palette.base,
		cursor_bg = palette.muted,
		cursor_border = palette.muted,
		cursor_fg = palette.text,
		selection_bg = palette.overlay,
		selection_fg = palette.text,

		ansi = {
			palette.overlay,
			palette.love,
			palette.pine,
			palette.gold,
			palette.foam,
			palette.iris,
			palette.rose,
			palette.text,
		},

		brights = {
			palette.muted,
			palette.love,
			palette.pine,
			palette.gold,
			palette.foam,
			palette.iris,
			palette.rose,
			palette.text,
		},

		tab_bar = {
			background = palette.base,
			active_tab = active_tab,
			inactive_tab = inactive_tab,
			inactive_tab_hover = active_tab,
			new_tab = inactive_tab,
			new_tab_hover = active_tab,
			inactive_tab_edge = palette.muted,
		},
	}
end

function M.window_frame()
	return {
		active_titlebar_bg = palette.base,
		inactive_titlebar_bg = palette.base,
	}
end

return M
