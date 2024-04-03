local wezconf = {}
local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  -- Create a right side pane
  local right_pane = pane:split { direction = 'Right', size = 0.5 }
  -- Split right pane into two, with new pane on bottom
  local bottom_pane = right_pane:split { direction = 'Bottom', cwd = "c:\\source\\cubiic\\customer-service" }
  -- Activate primary left pane
  pane:activate()
end)

wezconf.window_background_opacity = 0.5
wezconf.font_size = 10
wezconf.line_height = 1
wezconf.initial_rows = 80
wezconf.initial_cols = 230
wezconf.default_prog = { 'pwsh.exe' }
local wezterm_conf = require("wezterm_conf")(wezterm)
wezconf.font = wezterm.font 'CaskaydiaCove Nerd Font'
wezconf.color_scheme = "Atelier Sulphurpool (base16)"

local config = wezterm_conf.override(wezconf)

return config
