local wezterm = require "wezterm"
local wsl_domains = wezterm.default_wsl_domains()

function font_size()
  if wezterm.target_triple == "aarch64-apple-darwin" then
    return 14
  elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
    return 10
  end
end

for _, dom in ipairs(wsl_domains) do
  dom.default_cwd = "~"
end

return {
  window_padding = {
    left = "16px",
    right = "16px",
    top = "16px",
    bottom = "16px",
  },
  keys = {
    {
      key = "j",
      mods = "CTRL",
      action = wezterm.action.Nop,
    },
  },
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  enable_scroll_bar = true,
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("UDEV Gothic NFLG"),
  font_size = font_size(),
  use_ime = true,
  wsl_domains = wsl_domains,
  default_domain = "WSL:Arch",
  exit_behavior = "Close",
}

