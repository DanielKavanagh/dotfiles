vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)
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
vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>", {
	desc = "Open nvim-tree",
	silent = true,
})
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", {
	desc = "Toggle nvim-tree",
	silent = true,
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>tp", ":Markview splitToggle<CR>", {})

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
vim.diagnostic.config({ virtual_text = true })
