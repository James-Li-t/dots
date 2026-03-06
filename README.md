# 🌌 DOTFILES // SYSTEM CONFIGURATION

> *"Terminal aesthetics are not optional. They are mandatory."*

---

## 🚀 OVERVIEW

A meticulously crafted collection of terminal configuration files designed for the **modern developer experience**. This repository orchestrates the symphony of tools that power daily terminal workflows.

### Core Technologies
| Tool | Purpose | Configuration |
|------|---------|---------------|
| **Bash** | Shell environment | Oh My Bash + agnoster theme |
| **Neovim** | Text editor | Lazy.nvim + kanagawa-dragon |
| **Superfile** | File manager | Kaolin theme |
| **Zellij** | Terminal multiplexer | Kanagawa theme |

---

## 🐚 BASH // SHELL ENVIRONMENT

```bash
┌─────────────────────────────────────────────────────────────────────┐
│  Oh My Bash + agnoster theme                                        │
└─────────────────────────────────────────────────────────────────────┘
```

### Plugins & Extensions
- **git** — Repository status in prompt
- **bashmarks** — Navigate to frequently used directories

### Aliases
| Alias | Command |
|-------|---------|
| `bashconf` | `nvim ~/.bashrc` |
| `bashr` | `source ~/.bashrc` |
| `la` | `ls -a` |
| `ff` | `fastfetch` |
| `lg` | `lazygit` |

### Environment Tools
- **pyenv** — Python version management
- **n** — Node.js version manager
- **Cargo** — Rust toolchain
- **pipx** — Python apps isolation

### PATH Configuration
```bash
export PATH="/usr/local/cuda-13.1/bin:${PATH}"
export ANTHROPIC_BASE_URL="http://localhost:8080"
```

---

## 🧠 NEOVIM // EDITOR CONFIGURATION

```
┌─────────────────────────────────────────────────────────────────────┐
│  Lazy.nvim | lsp-zero | nvim-lspconfig | nvim-cmp | LuaSnip        │
│  nvim-autopairs | nvim-treesitter | bufferline | feline            │
│  telescope | neo-tree | mason | vimtex | kanagawa                  │
└─────────────────────────────────────────────────────────────────────┘
```

### Color Scheme
**kanagawa-dragon** — A refined, dragon-inspired palette

### LSP Configuration
- **Server**: lua-language-server
- **Framework**: lsp-zero
- **Features**: Autocompletion, diagnostics, code actions

### Keybindings (`<leader>` = Space)

| Binding | Action | Description |
|---------|--------|-------------|
| `[b` / `]b` | `:bprev` / `:bnext` | Previous/Next buffer |
| `<leader>bd` | `:bdelete` | Close current buffer |
| `<leader>e` | Neo-tree | File explorer |
| `<leader>ut` | Treesitter context | Show context menu |
| `<F5>` | `:CompilerRedo` | Redo last task |
| `<F6>` | `:CompilerOpen` | Open compiler |
| `<F7>` | `:CompilerToggleResults` | Toggle results panel |

### Editor Settings
| Setting | Value |
|---------|-------|
| Indent | 2 spaces |
| Clipboard | unnamedplus |
| Persistent undo | Enabled |
| Swap file | Disabled |
| Termguicolors | Enabled |

---

## 📂 SUPERFILE // FILE MANAGER

```
┌─────────────────────────────────────────────────────────────────────┐
│  Kaolin Theme                                                       │
│  Based on catppuccin-macchiato                                      │
└─────────────────────────────────────────────────────────────────────┘
```

### Configuration
- **Editor**: nvim
- **Code Syntax Highlighting**: catppuccin-macchiato
- **Image Preview**: Enabled
- **File Preview**: Enabled

---

## 🎯 ZELLIJ // TERMINAL MULTIPLEXER

```
┌─────────────────────────────────────────────────────────────────────┐
│  Kanagawa Theme | Pane Frames: ON | Scroll Buffer: 10000 lines      │
└─────────────────────────────────────────────────────────────────────┘
```

### Pane Navigation
| Key | Action |
|-----|--------|
| `h` | Move focus left |
| `j` | Move focus down |
| `k` | Move focus up |
| `l` | Move focus right |

### Pane Management
| Key | Action |
|-----|--------|
| `d` | New pane (down) |
| `r` | New pane (right) |
| `n` | New pane |
| `s` | New pane (stacked) |
| `e` | Toggle floating |
| `f` | Fullscreen |
| `x` | Close focused pane |

### Mode Switching
| Key | Action |
|-----|--------|
| `Ctrl+b` | Tmux mode |
| `Ctrl+t` | Tab mode |
| `Ctrl+o` | Session mode |
| `Ctrl+s` | Scroll mode |

---

## 🛠️ QUICK START

### Neovim
```bash
nvim
# First run: Plugins auto-install via lazy.nvim
```

### Superfile
```bash
superfile
```

### Zellij
```bash
zellij
# Ctrl+o to access session manager
```

---

## 📁 DIRECTORY STRUCTURE

```
dots/
├── .bashrc              # Shell configuration
├── config.kdl           # Zellij configuration
├── README.md            # This file
├── .gitignore           # Git ignore rules
├── nvim/                # Neovim configuration
│   ├── init.lua         # Main init
│   ├── lazy-lock.json   # Plugin lockfile
│   └── lua/
│       ├── core/
│       │   ├── mappings.lua
│       │   ├── options.lua
│       │   └── nvim-cmp.lua
│       └── plugins/
│           ├── plugins.lua
│           ├── telescope.lua
│           ├── treesitter.lua
│           └── feline.lua
└── superfile/           # Superfile configuration
    ├── config.toml
    ├── hotkeys.toml
    └── theme/
        └── kaolin.toml
```

---

## 🎨 THEMES IN USE

| Tool | Theme |
|------|-------|
| Bash | agnoster |
| Neovim | kanagawa-dragon |
| Superfile | kaolin |
| Zellij | kanagawa |

---

## 📜 LICENSE

MIT License — Use, modify, and distribute freely.

---

> *"The terminal is the cockpit of the digital age. Make it yours."*