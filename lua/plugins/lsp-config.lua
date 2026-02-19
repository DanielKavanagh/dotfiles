return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					"lua_ls",
					"basedpyright",
					"gopls",
					"stylua",
					"ruff",
					"emmet_language_server",
					"html",
					"cssls",
					"tailwindcss",
					"prettierd",
				},
				automatic_installation = true,
				handlers = {
					function(source_name, methods)
						require("mason-null-ls").default_setup(source_name, methods)
					end,
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {},
			},
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({})
		end,
	},
	{
		"neovim/nvim-lspconfig",
	},
}
