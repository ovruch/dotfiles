local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  -- Create a right side pane
  local right_pane = pane:split { direction = 'Right', size = 0.4 }
  -- Split right pane into two, with new pane on bottom
  local bottom_pane = right_pane:split { direction = 'Bottom', args = {}}
  -- Activate primary left pane
  pane:activate()
end)

return config