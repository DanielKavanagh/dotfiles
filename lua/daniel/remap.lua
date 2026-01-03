vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tws", ":%s/\\s\\+$//<CR>", {
    desc = "Trim end of line whitespace for entire file",
    silent = true
})

vim.o.shiftwidth = 4
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.wrap = false
vim.o.autoindent = true
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.diagnostic.config({ virtual_text = true })
