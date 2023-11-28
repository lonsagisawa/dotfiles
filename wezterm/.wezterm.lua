local wezterm = require "wezterm"
local wsl_domains = wezterm.default_wsl_domains()

-- OS specific - Font size
function font_size()
  if wezterm.target_triple == "aarch64-apple-darwin" then
    -- macOS
    return 15
  elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
    -- Windows
    return 11
  end
end

-- OS specific - Default domain
function default_domain()
  if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    -- Windows
    return "WSL:Debian"
  else
    return "local"
  end
end

-- OS specific - Windows decoration
function window_decorations()
  if wezterm.target_triple == "aarch64-apple-darwin" then
    return "RESIZE"
  else
    return "INTEGRATED_BUTTONS|RESIZE"
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
    left = "10pt",
    right = "10pt",
    top = "10pt",
    bottom = "10pt",
  },
  -- window frame
  window_frame = {
    font = wezterm.font("UDEV Gothic NFLG"),
    font_size = 12.0,
    active_titlebar_bg = "#181825",
    inactive_titlebar_bg = "#181825",
  },
  -- tabbar
  use_fancy_tab_bar = true,
  tab_bar_at_bottom = false,
  tab_max_width = 48,
  -- color scheme
  color_scheme = "Catppuccin Mocha",
  -- font
  font = wezterm.font("UDEV Gothic NFLG"),
  font_size = font_size(),
  freetype_load_flags = "NO_HINTING",
  line_height = 1.25,
  -- ime
  use_ime = true,
  -- window border
  window_decorations = window_decorations(),
  -- WSL specific
  wsl_domains = wsl_domains,
  default_domain = default_domain(),
  -- behavior
  exit_behavior = "Close",
}

