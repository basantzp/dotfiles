-- Keep only your personal input overrides here. Uncommented settings below
-- replace Omarchy's defaults.

hl.config({
  input = {
    -- Keyboard repeat timers: 350ms delay prevents spacebar runaway / infinite repeat
    repeat_delay = 350,
    repeat_rate = 30,

    -- Enable true continuous high-resolution pixel scrolling (MacBook style)
    emulate_discrete_scroll = 0,

    touchpad = {
      -- Prevent touchpad from freezing/dropping inputs while typing or right after keystrokes
      disable_while_typing = false,

      -- Natural (smooth inverse) scrolling
      natural_scroll = true,

      -- Responsive 1:1 fluid scroll speed
      scroll_factor = 1.0,

      -- Tap to click: 1-finger tap without needing to depress the mechanical switch
      tap_to_click = true,

      -- Tap-and-drag: double-tap and hold to drag
      tap_and_drag = true,

      -- Clickfinger behavior: 1-finger = left click, 2-finger = right click, 3-finger = middle click
      clickfinger_behavior = true,

      -- Middle click emulation: pressing both buttons simultaneously
      middle_button_emulation = true,
    },
  },

  cursor = {
    -- Lock cursor refresh to monitor refresh rate (60 Hz) to eliminate micro-stutter
    min_refresh_rate = 60,
    -- Hardware direct scanout cursor (zero rendering latency)
    no_hardware_cursors = 0,
    -- Synchronize theme
    sync_gsettings_theme = true,
    -- Pixel-accurate hotspot
    hotspot_padding = 0,
  },
})

-- Dedicated Luxury MacBook-style Ballistic Curve for Dell Inspiron 15 Touchpad
hl.device({
  name = "dell0ab0:00-27c6:0d43-touchpad",
  sensitivity = 0.05,
  accel_profile = "custom 0.2 0.0 0.2 0.5 0.9 1.3 1.8 2.4 3.0",
  natural_scroll = true,
})

-- Disable duplicate/legacy non-multitouch mouse interfaces to eliminate event conflicts
hl.device({
  name = "dell0ab0:00-27c6:0d43-mouse",
  enabled = false,
})

hl.device({
  name = "ps/2-generic-mouse",
  enabled = false,
})

-- Multi-touch gestures:
-- 3-finger horizontal swipe: switch workspaces
hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace",
})

-- 3-finger swipe up: toggle fullscreen
hl.gesture({
  fingers = 3,
  direction = "up",
  action = "fullscreen",
})

-- 3-finger swipe down: toggle floating window
hl.gesture({
  fingers = 3,
  direction = "down",
  action = function()
    hl.dispatch(hl.dsp.togglefloating())
  end,
})
