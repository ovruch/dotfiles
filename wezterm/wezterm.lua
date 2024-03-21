local wezconf = {}
wezterm=require("wezterm")

wezconf.window_background_opacity = 0.7
wezconf.font_size = 10
wezconf.line_height = 1
wezconf.tab_bar_at_bottom = true
wezconf.initial_rows = 50
wezconf.initial_cols = 172
wezconf.default_prog = { 'pwsh.exe' }
local wezterm_conf = require("wezterm_conf")(wezterm)
wezconf.font = wezterm.font 'JetBrains Mono NL Slashed'
wezconf.color_scheme = "Atelier Sulphurpool (base16)"
local config = wezterm_conf.override(wezconf)

return config
