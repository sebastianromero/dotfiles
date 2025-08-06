return {

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
		import = "lazyvim.plugins.extras.editor.telescope",
	},
	{
		import = "lazyvim.plugins.extras.formatting.biome",
	},
	{
		import = "lazyvim.plugins.extras.lang.astro",
	},
	{
		import = "lazyvim.plugins.extras.lang.git",
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
		import = "lazyvim.plugins.extras.ui.mini-animate",
	},
	{
		import = "lazyvim.plugins.extras.ui.smear-cursor",
	},
	{
		import = "lazyvim.plugins.extras.ui.treesitter-context",
	},
	{
		import = "lazyvim.plugins.extras.util.gitui",
	},
	{
		import = "lazyvim.plugins.extras.util.mini-hipatterns",
	},
	{ import = "lazyvim.plugins.extras.util.chezmoi" },
	{
		import = "lazyvim.plugins.extras.util.project",
	},
	{
		import = "lazyvim.plugins.extras.util.startuptime",
	},
	{
		import = "lazyvim.plugins",
	},
	{
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
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
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			dashboard = {
				enabled = true,
				preset = {
					header = [[
          _____          
         /\    \         
        /::\    \        
       /::::\    \       
      /::::::\    \      
     /:::/\:::\    \     
    /:::/__\:::\    \    
    \:::\   \:::\    \   
  ___\:::\   \:::\    \  
 /\   \:::\   \:::\    \ 
/::\   \:::\   \:::\____\
\:::\   \:::\   \::/    /
 \:::\   \:::\   \/____/ 
  \:::\   \:::\    \     
   \:::\   \:::\____\    
    \:::\  /:::/    /    
     \:::\/:::/    /     
      \::::::/    /      
       \::::/    /       
        \::/    /        
         \/____/         
                         
]],
				},
			},
		},
	},
}
