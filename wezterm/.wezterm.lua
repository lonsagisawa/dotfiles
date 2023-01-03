local wezterm = require "wezterm"
local wsl_domains = wezterm.default_wsl_domains()

-- OS specific - Font size
function font_size()
  if wezterm.target_triple == "aarch64-apple-darwin" then
    -- macOS
    return 14
  elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
    -- Windows
    return 11
  end
end

-- OS specific - Default domain
function default_domain()
  if wezterm.target_triple == "aarch64-apple-darwin" then
    -- macOS
    return "local"
  elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
    -- Windows
    return "WSL:Ubuntu"
  end
end

-- WSL - Default work directory
for _, dom in ipairs(wsl_domains) do
  dom.default_cwd = "~"
end

return {
  -- keybind
  keys = {
    {
      key = "j",
      mods = "CTRL",
      action = wezterm.action.Nop,
    },
  },
  -- window padding
  window_padding = {
    left = "16px",
    right = "16px",
    top = "16px",
    bottom = "16px",
  },
  -- tabbar
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  tab_max_width = 48,
  -- color scheme
  color_scheme = "Catppuccin Mocha",
  -- font
  font = wezterm.font("UDEV Gothic NFLG"),
  font_size = font_size(),
  -- ime
  use_ime = true,
  -- WSL specific
  wsl_domains = wsl_domains,
  default_domain = default_domain(),
  -- behavior
  exit_behavior = "Close",
}
