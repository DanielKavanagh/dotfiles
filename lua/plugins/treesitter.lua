---@module "lazy"
---@type LazySpec
return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter-context",
			opts = {
				max_lines = 4,
				multiline_threshold = 2,
			},
		},
	},
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	config = function()
		vim.g.ts_install = {
			"bash",
			"comment",
			"css",
			"diff",
			"fish",
			"git_config",
			"git_rebase",
			"gitcommit",
			"gitignore",
			"go",
			"html",
			"java",
			"javadoc",
			"javascript",
			"json",
			"latex",
			"liquid",
			"lua",
			"luadoc",
			"make",
			"markdown",
			"markdown_inline",
			"norg",
			"python",
			"query",
			"regex",
			"scss",
			"svelte",
			"toml",
			"tsx",
			"typescript",
			"typst",
			"vim",
			"vimdoc",
			"vue",
			"xml",
			"zsh",
		}

		local ts_install = vim.g.ts_install or {}
		local ts_filetypes = vim
		.iter(ts_install)
		:map(function(lang)
			return vim.treesitter.language.get_filetypes(lang)
		end)
		:flatten()
		:totable()

		require("nvim-treesitter").install(ts_install)

		vim.api.nvim_create_autocmd("FileType", {
			desc = "Setup treesitter for a buffer",
			pattern = ts_filetypes,
			group = vim.api.nvim_create_augroup("ts_setup", { clear = true }),
			callback = function(e)
				vim.treesitter.start(e.buf)
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end
}
