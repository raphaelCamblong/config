local wezterm = require("wezterm")

local typeface = "Monocraft"

return {
	color_scheme = "Catppuccin Mocha",

	font = wezterm.font("JetBrains Mono NL Thin", {weight="Medium", stretch="Normal", style="Normal"}), 
	font_rules = {
		{
		  italic = true,
		  font = wezterm.font("JetBrains Mono NL Thin", {weight="Medium", stretch="Normal", style="Italic"}), 
		},
		{
		  intensity = "Bold",
		  font = wezterm.font("JetBrains Mono NL", {weight="Bold", stretch="Normal", style="Normal"}),
		},
		{
		  intensity = "Bold",
		  italic = true,
		  font = wezterm.font("JetBrains Mono NL", {weight="Bold", stretch="Normal", style="Italic"})
		},
	  },
	  
	  font_size = 12.0,

	window_padding = {
		left = 15,
		right = 15,
		top = 10,
		bottom = 0,
	},
	  
	window_background_opacity = 0.928,
	window_background_hsb = 15,
	window_decorations = "RESIZE",
	scrollback_lines = 5000,
	enable_scroll_bar = false,
	check_for_updates = false,

	native_macos_fullscreen_mode = true,
	tab_bar_at_bottom = false,
	tab_max_width = 1000,
	use_fancy_tab_bar = true,

	keys = {
		{
			key = "f",
			mods = "CTRL|CMD",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = "t",
			mods = "CMD",
			action = wezterm.action.SpawnCommandInNewTab({ cwd = wezterm.home_dir }),
		},
		{
			key = "Enter",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "{",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "}",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "{",
			mods = "OPT|SHIFT",
			action = wezterm.action.RotatePanes("CounterClockwise"),
		},
		{
			key = "}",
			mods = "OPT|SHIFT",
			action = wezterm.action.RotatePanes("Clockwise"),
		},
		{
			key = "Tab",
			mods = "OPT|SHIFT",
			action = wezterm.action.MoveTabRelative(-1),
		},
		{
			key = "Tab",
			mods = "OPT",
			action = wezterm.action.MoveTabRelative(1),
		},
	},
}