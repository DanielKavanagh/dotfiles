require('telescope').setup{
  defaults = {
    mappings = {
      i = {
      }
    }
  },
  pickers = {
    find_files = {
      find_command = {'rg', '--files', '--hidden', '-g', '!.git'}
    },
    live_grep = {
            additional_args = {'--hidden'}
        },
  },
  extensions = {
  }
}
