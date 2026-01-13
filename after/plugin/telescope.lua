local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fd', builtin.find_files, { desc = 'Find files in cwd' })
vim.keymap.set('n', '<leader>fa', function()
	builtin.find_files {
		cwd = vim.env.HOME
	}
end, { desc = 'Find files in home directory' })

vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Start live grep' })
vim.keymap.set('n', '<leader>fga', function()
	builtin.live_grep {
		cwd = vim.env.HOME
	}
end, { desc = 'Start live grep in home directory' })

vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
