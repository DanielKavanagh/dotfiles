local capabilities = require("cmp_nvim_lsp").default_capabilities()

---@type vim.lsp.Config
return {
	capabilities = capabilities,
	filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
}
