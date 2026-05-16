# Overview

Repo for versioning my nvim config files.

# Packages Required for Current Plugins (2026-05-16)

- Treesitter required tree-sitter-cli (installed via package manager, not npm)
  - https://docs.rs/tree-sitter-cli/latest/tree_sitter_cli/

# Useful Keybind Reference

## VIM Shortcuts

> [!NOTE]
> `<leader>` is mapped to space in this config

### Movement

| Shortcut | Description |
| -------- | ----------- |
| `gg` | Go to start of file |
| `G` | Go to end of file |
| `S` (or `cc`) | Move to correct indent level |
| `o` | Insert blank line below current, and enter insert mode |
| `O` | Insert blank line above current, and enter insert mode |
| `%` | Move to other end of current block (brackets/comments/ifs/loops etc.) |
| `gt` | Move to next tab |
| `gT` | Move to previous tab |
| `{0..n}gt` e.g. `2gt` | Go to the {n}<sup>th</sup> tab |
| `]m` `[m` | Move to start of next/prev block in code |
| `]M` `[M` | Move to end of next/prev block in code |
| `]d` `[d` | Move to end of next/prev block in code |

### Formatting

| Shortcut | Description |
| -------- | ----------- |
| `gg=G` | Auto-indent entire file |
| `U` | Undo change |
| `{0..n}U` | Undo n change(s) |
| `<C-r>` | Redo change |
| `{0..n}<C-r>` | Redo n change(s) |

### NVIM LSP

| Shortcut | Description |
| -------- | ----------- |
| `<C-y>` | Accept LSP suggestion |
| `gra` | Open LSP code action (`vim.lsp.buf.code_action()`) |
| `gri` | Goto implementation (`vim.lsp.buf.implementation()`) |
| `grn` | Rename (`vim.lsp.buf.rename()`) |
| `grr` | Open references (`vim.lsp.buf.references()`) |
| `grt` | Open type definition (`vim.lsp.buf.type_definition()`) |
| `<leader>gf` | Format file using linter/formatter (`vim.lsp.buf.format()`) |

### Custom Remaps

| Shortcut | Description |
| -------- | ----------- |
| `<leader>tws` | Trims whitespace from end of lines for entire file |
| `<leader>tww` | Toggles word wrap |
| `<leader>csh` | Clear search highlighting |
| `<leader>tp` | Toggle Markview split preview |

## Regexes

| Shortcut | Description |
| -------- | ----------- |
| `%s/\s\+$//` | Trim whitespace from end of lines in file |
