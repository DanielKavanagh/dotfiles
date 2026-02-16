local capabilities = require("cmp_nvim_lsp").default_capabilities()

---@type vim.lsp.Config
return {
	capabilities = capabilities,
	settings = {
		Lua = {
			workspace = {
				library = {
					vim.env.VIMRUNTIME,}
			},
			codeLens = { enable = true },
			hint = { enable = true, semicolon = 'Disable' },
		}
	},
}
