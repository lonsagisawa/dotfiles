local wezterm = require("wezterm")
local wsl_domains = wezterm.default_wsl_domains()

function IsWindows()
  if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    return true
  else
    return false
  end
end

function IsMac()
  if wezterm.target_triple == "aarch64-apple-darwin" then
    return true
  else
    return false
  end
end

-- OS specific - Font size
function FontSize()
  if IsMac() then
    return 14
  else
    return 10.5
  end
end

-- OS specific - Default domain
function WslDefaultDomain()
  if IsWindows() then
    -- Windows
    return "WSL:Debian"
  else
    return "local"
  end
end

-- OS specific - Windows decoration
function WindowDecorations()
  if IsWindows() then
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
  use_fancy_tab_bar = IsWindows(),
  tab_bar_at_bottom = false,
  tab_max_width = 48,
  -- color scheme
  color_scheme = "Catppuccin Mocha",
  -- font
  font = wezterm.font_with_fallback {
    {
      family = "Fira Code",
      weight = 450,
      harfbuzz_features = { "cv02", "cv10", "ss01", "cv14" },
    },
    "LINE Seed JP_TTF",
    "Symbols Nerd Font",
  },
  font_size = FontSize(),
  freetype_load_flags = "NO_HINTING",
  line_height = 1.6,
  -- ime
  use_ime = true,
  -- window border
  window_decorations = WindowDecorations(),
  -- WSL specific
  wsl_domains = wsl_domains,
  default_domain = WslDefaultDomain(),
  -- behavior
  exit_behavior = "Close",
  front_end = "WebGpu",
}
