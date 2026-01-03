# Overview

Repo for versioning my nvim config files.

# Useful Keybind Reference

## VIM Shortcuts

### Movement

| Shortcut | Description |
| -------- | ----------- |
| `gg` | Go to start of file |
| `G` | Go to end of file |
| `S` (or cc) | Move to correct indent level |
| `o` | Insert blank line below current, and enter insert mode |
| `O` | Insert blank line above current, and enter insert mode |
| `%` | Move to other end of current block (brackets/comments/ifs/loops etc.) |

### Formatting

| Shortcut | Description |
| -------- | ----------- |
| `gg=G` | Auto-indent entire file |


### NVIM LSP

| Shortcut | Description |
| -------- | ----------- |
| `<C-y>` | Accept LSP suggestion |
| `gra` | Open LSP code action (`vim.lsp.buf.code_action()`) |
| `gri` | Goto implementation (`vim.lsp.buf.implementation()`) |
| `grn` | Rename (`vim.lsp.buf.rename()`) |
| `grr` | Open references (`vim.lsp.buf.references()`) |
| `grt` | Open type definition (`vim.lsp.buf.type_definition()`) |

### Custom Remaps

> [!NOTE] 
> `<leader>` is mapped to space in this config

| Shortcut | Description |
| -------- | ----------- |
| `<leader>tws` | Trims whitespace from end of lines for entire file |

## Regexes

| Shortcut | Description |
| -------- | ----------- |
| `%s/\s\+$//` | Trim whitespace from end of lines in file |
