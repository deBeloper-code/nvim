-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:

-- or, changing the font size and color scheme.
config.font_size = 17
config.font = wezterm.font 'JetBrainsMono Nerd Font Propo'
-- config.color_scheme = "Batman"
config.line_height = 1.04
config.hide_tab_bar_if_only_one_tab = true

config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
}

-- config.window_background_image = '/Users/b0s0kdu/Documents/jony.jpg'

config.window_background_opacity = 0.79
config.macos_window_background_blur = 30

config.window_frame = {
	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 15.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#333333",

	-- The overall background color of the tab bar when
	-- the window is not focused
	-- inactive_titlebar_bg = "#333333",
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.window_decorations = "RESIZE"
-- Finally, return the configuration to wezterm:
return config
