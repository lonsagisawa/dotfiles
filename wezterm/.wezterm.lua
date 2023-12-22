local wezterm = require("wezterm")
local wsl_domains = wezterm.default_wsl_domains()

function isWindows()
  if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    return true
  else
    return false
  end
end

function isMac()
  if wezterm.target_triple == "aarch64-apple-darwin" then
    return true
  else
    return false
  end
end

-- OS specific - Font size
function fontSize()
  if isMac() == true then
    return 14
  else
    return 11
  end
end

-- OS specific - Default domain
function defaultDomain()
  if isWindows() == true then
    -- Windows
    return "WSL:Debian"
  else 
    return "local"
  end
end

-- OS specific - Windows decoration
function windowDecorations()
  if isWindows() == true then
    return "INTEGRATED_BUTTONS|RESIZE"
  else 
    return "TITLE|RESIZE"
  end
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
    left = "2cell",
    right = "2cell",
    top = "0.5cell",
    bottom = "0.5cell",
  },
  -- window frame
  window_frame = {
    font = wezterm.font("Yu Gothic UI"),
    font_size = 10,
    active_titlebar_bg = "#181825",
    inactive_titlebar_bg = "#181825",
  },
  -- tabbar
  use_fancy_tab_bar = isWindows(),
  tab_bar_at_bottom = false,
  tab_max_width = 48,
  -- color scheme
  color_scheme = "Catppuccin Mocha",
  -- font
  font = wezterm.font_with_fallback { "CaskaydiaCove NF", "LINE Seed JP_TTF" },
  font_size = fontSize(),
  freetype_load_flags = "NO_HINTING",
  line_height = 1.4,
  -- ime
  use_ime = true,
  -- window border
  window_decorations = windowDecorations(),
  -- WSL specific
  wsl_domains = wsl_domains,
  default_domain = defaultDomain(),
  -- behavior
  exit_behavior = "Close",
  front_end = "WebGpu",
}
