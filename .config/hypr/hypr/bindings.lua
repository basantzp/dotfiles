-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Ensure SUPER + SPACE reliably toggles the Omarchy menu at root
hl.unbind("SUPER + SPACE")
o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Close window with SUPER + Q instead of SUPER + W (kills Viber completely when closing Viber)
hl.unbind("SUPER + W")
o.bind("SUPER + Q", "Close window", os.getenv("HOME") .. "/.local/bin/close-window-or-kill-viber")

-- Open Brave browser with SUPER + B
o.bind("SUPER + B", "Brave Browser", { launch = "brave" })

-- Open Viber with SUPER + V
hl.unbind("SUPER + V")
o.bind("SUPER + V", "Viber", { launch = "viber" })

-- Open Antigravity CLI with SUPER + A
o.bind("SUPER + A", "Antigravity CLI", { tui = "agy" })

-- Toggle instant native Wi-Fi / Network panel with SUPER + W
o.bind("SUPER + W", "Wi-Fi Settings", "nm-connection-editor")

-- Toggle Night Light with SUPER + N (Windows Key + N)
o.bind_toggle("SUPER + N", "Toggle nightlight", "nightlight")

-- Open Brave with pokhrelbasant00 profile using SUPER + C
o.bind("SUPER + C", "Brave (pokhrelbasant00)", "brave --profile-directory='Profile 2'")

-- Open opencode with SUPER + O
o.bind("SUPER + O", "opencode", { tui = "opencode" })

-- Open YouTube with SUPER + Y
o.bind("SUPER + Y", "YouTube", "omarchy-launch-webapp https://youtube.com/")

-- Open Lex Fridman channel with SUPER + L
o.bind("SUPER + L", "Lex Fridman YouTube", "omarchy-launch-webapp https://www.youtube.com/@lexfridman")


-- Open X (Twitter) with SUPER + X
hl.unbind("SUPER + X")
o.bind("SUPER + X", "X (Twitter)", "omarchy-launch-webapp https://x.com/")

-- Open Google Sheets with SUPER + S
hl.unbind("SUPER + S")
o.bind("SUPER + S", "Google Sheets", "omarchy-launch-webapp https://docs.google.com/spreadsheets/")

-- Open Kitty terminal with SUPER + K
hl.unbind("SUPER + K")
o.bind("SUPER + K", "Kitty", { launch = "kitty" })

-- Open TradingView with SUPER + T
hl.unbind("SUPER + T")
o.bind("SUPER + T", "TradingView", { launch = "tradingview" })

