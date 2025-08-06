return {
	{
		import = "lazyvim.plugins.extras.util.startuptime",
	},
	{
		import = "lazyvim.plugins.extras.coding.cmp",
	},
	{
		import = "lazyvim.plugins.extras.coding.yanky",
	},
	{
		import = "lazyvim.plugins.extras.editor.dial",
	},
	{
		import = "lazyvim.plugins.extras.editor.refactoring",
	},
	{
		import = "lazyvim.plugins.extras.editor.snacks-explorer",
	},
	{
		import = "lazyvim.plugins.extras.formatting.prettier",
	},
	{
		import = "lazyvim.plugins.extras.ui.mini-animate",
	},
	{
		import = "lazyvim.plugins.extras.ui.smear-cursor",
	},
	{
		import = "lazyvim.plugins.extras.ui.treesitter-context",
	},
	{
		import = "lazyvim.plugins.extras.util.chezmoi",
	},
	{
		import = "lazyvim.plugins.extras.util.gitui",
	},
	{
		import = "lazyvim.plugins.extras.util.mini-hipatterns",
	},
	{
		import = "lazyvim.plugins.extras.util.project",
	},
	{
		import = "lazyvim.plugins.extras.util.startuptime",
	},
	{
		import = "lazyvim.plugins.extras.lang.astro",
	},
	{
		import = "lazyvim.plugins.extras.lang.json",
	},
	{
		import = "lazyvim.plugins.extras.lang.markdown",
	},
	{
		import = "lazyvim.plugins.extras.lang.php",
	},
	{
		import = "lazyvim.plugins.extras.lang.prisma",
	},
	{
		import = "lazyvim.plugins.extras.lang.python",
	},
	{
		import = "lazyvim.plugins.extras.lang.rust",
	},
	{
		import = "lazyvim.plugins.extras.lang.sql",
	},
	{
		import = "lazyvim.plugins.extras.lang.tailwind",
	},
	{
		import = "lazyvim.plugins.extras.lang.toml",
	},
	{
		import = "lazyvim.plugins.extras.lang.typescript",
	},
	{
		import = "lazyvim.plugins.extras.lang.yaml",
	},
	{
		"uga-rosa/ccc.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				prettier = {
					condition = function()
						return false
					end,
				},
			},
			formatters_by_ft = {
				javascript = { "biome" },
				typescript = { "biome" },
				json = { "biome" },
				jsonc = { "biome" },
				css = { "biome" },
				graphql = { "biome" },
				svelte = { "biome" },
				vue = { "biome" },
				javascriptreact = { "biome" },
				typescriptreact = { "biome" },
				astro = { "biome" },
			},
		},
	},
	{
		"github/copilot.vim",
		event = "InsertEnter",
	},
	{
		"karb94/neoscroll.nvim",
		opts = {},
	},
	{
		"sphamba/smear-cursor.nvim",
		event = "VeryLazy",
		opts = {
			smear_between_buffers = true,
			smear_between_neighbor_lines = true,
			scroll_buffer_space = true,
			legacy_computing_symbols_support = true,
			smear_insert_mode = true,
		},
	},
}
