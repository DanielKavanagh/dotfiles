return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup {
			git = {
				enable = true
			},
			view = {
				side = "right",
				width = 40,
				relativenumber = true
			},
			renderer = {
				highlight_opened_files = "all",
				highlight_git = "all",
				icons = {
					show = {
						git = true
					},
				},
			},
			filters = {
				git_ignored = false
			}
		}
	end,
}
