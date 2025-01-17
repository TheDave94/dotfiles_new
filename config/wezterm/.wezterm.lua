local wezterm = require("wezterm")

local config = wezterm.config_builder()
local mux = wezterm.mux

-- General Settings
config.term = "wezterm"
config.max_fps = 120
config.prefer_egl = true

-- Font Settings
config.font_size = 15
config.line_height = 1.0
config.font = wezterm.font("Maple Mono NF")

config.font_rules = {
  {
    italic = true,
    intensity = "Bold",
    font = wezterm.font("Maple Mono NF", {
      italic = true,
      weight = "Regular",
    }),
  },
}

-- Apperance Settings
config.color_scheme = "tokyonight"
config.window_decorations = "TITLE | RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 15,
  right = 15,
  top = 5,
  bottom = 2,
}
config.cursor_blink_rate = 0

-- Window Management
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.95

-- Start wezterm in fullscreen
wezterm.on("gui-startup", function(cmd)
  local pane, tab, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config
