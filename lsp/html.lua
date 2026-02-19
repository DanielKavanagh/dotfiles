local capabilities = require("cmp_nvim_lsp").default_capabilities()

---@type vim.lsp.Config
return {
	capabilities = capabilities,
	on_attach = function (client, _)
		if client.name == "html" then
			client.server_capabilities.documentFormattingProvider = false
		end
	end
}
