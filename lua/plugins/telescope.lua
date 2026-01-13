return {
	{
		'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function ()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {}
					},
					fzf = {}
				}
			}

			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("fzf")
		end
	}

}
