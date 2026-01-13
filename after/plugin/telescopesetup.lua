require('telescope').setup{
	defaults = {
		mappings = {
			i = {
			}
		}
	},
	pickers = {
		find_files = {
			find_command = {'rg', '--files' }
		},
		live_grep = {
			glob_pattern = { '!.git' },
		},
	},
	extensions = {
	}
}
