local wezterm = require "wezterm"

function default_shell()
	if wezterm.target_triple == "aarch64-apple-darwin" then
		return { "/opt/homebrew/bin/zsh", "-l" }
	elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
		return { "C:/Windows/system32/wsl.exe" }
	end
end



return {
	window_padding = {
		left = "16px",
		right = "16px",
		top = "16px",
		bottom = "16px",
	},
	default_prog = default_shell(),
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
	color_scheme = "Catppuccin Mocha",
	font = wezterm.font "UDEV Gothic NFLG",
	font_size = 14.0,
}

