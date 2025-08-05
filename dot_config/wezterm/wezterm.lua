local wezterm = require("wezterm")

-- Detectar el modo claro/oscuro
local function scheme_for_appearance(appearance)
    if appearance:find("Dark") then
        return "Gruvbox dark, hard (base16)"
    else
        return "Gruvbox light, hard (base16)"
    end
end

local config = {
    automatically_reload_config = true,
    font = wezterm.font("MonaspiceNe Nerd Font Mono", {
        weight = "Medium"
    }),
    font_size = 15,
    color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
    use_fancy_tab_bar = true,
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    hide_mouse_cursor_when_typing = true,
    initial_cols = 100,
    initial_rows = 30,
    adjust_window_size_when_changing_font_size = true,
    window_frame = {
        font_size = 14
    },
    window_padding = {
        left = 10,
        right = 10,
        top = 10,
        bottom = 10
    },
    audible_bell = "SystemBeep",
    keys = {{
        key = 'l',
        mods = 'ALT',
        action = wezterm.action.ShowLauncher
    }}
}

return config
