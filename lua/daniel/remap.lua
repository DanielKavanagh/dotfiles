vim.g.mapleader = " "

-- utility keymaps
vim.keymap.set("n", "<leader>tws", ":%s/\\s\\+$//<CR>", {
	desc = "Trim end of line whitespace for entire file",
	silent = true,
})
vim.keymap.set("n", "<leader>tww", ":set wrap!<CR>", {
	desc = "Toggle word wrap",
	silent = true,
})
vim.keymap.set("n", "<leader>csh", ':let @/ = ""<CR>', {
	desc = "Clear search highlighting",
	silent = true,
})

-- nvim-tree keymaps
vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>", {
	desc = "Open nvim-tree",
	silent = true,
})
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", {
	desc = "Toggle nvim-tree",
	silent = true,
})
vim.keymap.set("n", "<leader>op", function()
	local api = require("nvim-tree.api")
	if vim.fn.bufname() == "NvimTree_1" then
		return
	end
	api.tree.find_file({ buf = vim.fn.bufnr() })
end)

-- misc keymaps
vim.keymap.set("n", "<leader>Q", ":cquit<CR>", {
	desc = "Force quit nvim with error",
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- format current buffer using lsp 
vim.keymap.set("n", "<leader>tp", ":Markview splitToggle<CR>", {})

-- general vim options
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.expandtab = false
vim.o.smarttab = true
vim.o.wrap = false
vim.o.autoindent = true
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
-- show both absolute and relative line numbers 
vim.opt.statuscolumn = "%s %{v:lnum} %{v:relnum} "
vim.diagnostic.config({ virtual_text = true })
-- automaetically change working directory to current open buffer
vim.o.autochdir = true
-- disable folding
vim.opt.fillchars = { fold = " " }
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99
