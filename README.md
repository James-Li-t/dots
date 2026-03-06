# Dotfiles

Personal terminal configuration.

---

## .bashrc

- **Shell**: Oh My Bash with `agnoster` theme
- **Plugins**: `git`, `bashmarks`
- **Aliases**: `bashconf`, `bashr`, `la`, `ff` (fastfetch), `lg` (lazygit)
- **Tools**: pyenv, n (Node.js), Cargo, pipx
- **PATH**: CUDA 13.1, local Anthropic API (`localhost:8080`)

---

## Neovim

### Plugins
lazy.nvim | lsp-zero | nvim-lspconfig | nvim-cmp | LuaSnip | nvim-autopairs | nvim-treesitter | bufferline | feline | telescope | neo-tree | mason | vimtex | kanagawa

### Keybindings (`<leader>` = Space)
- `[b` / `]b` — Previous/Next buffer
- `<leader>bd` — Close buffer
- `<leader>e` — Neo-tree
- `<leader>ut` — Treesitter context
- `<F5>` / `<F6>` / `<F7>` — Compiler redo/open/toggle

### Settings
- Color: kanagawa-dragon
- LSP: lua-language-server
- Indent: 2 spaces
- Clipboard: unnamedplus
- Persistent undo enabled

---

## Zellij

### Keybindings
- `h/j/k/l` — Move focus
- `d/r/n/s` — New pane (down/right/new/stacked)
- `e` — Toggle floating
- `f` — Fullscreen
- `Ctrl+b` — Tmux mode
- `Ctrl+t` — Tab mode
- `Ctrl+o` — Session mode
- `Ctrl+s` — Scroll mode

### Settings
- Theme: kanagawa
- Pane frames: enabled
- Scroll buffer: 10000 lines