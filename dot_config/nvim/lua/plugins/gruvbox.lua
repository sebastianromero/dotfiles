-- plugins/gruvbox.lua
local function is_dark_mode()
	local handle =
		io.popen("osascript -e 'tell application \"System Events\" to tell appearance preferences to get dark mode'")
	local result = handle and handle:read("*a") or ""
	if handle then
		handle:close()
	end
	return result:match("true") ~= nil
end

local function set_theme()
	vim.o.background = is_dark_mode() and "dark" or "light"
	vim.cmd.colorscheme("gruvbox")
end

return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		set_theme()
		vim.api.nvim_create_user_command("SetThemeAuto", set_theme, {})
	end,
}
