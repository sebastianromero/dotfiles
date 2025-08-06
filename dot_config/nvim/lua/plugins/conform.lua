return {
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
}
