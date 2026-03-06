
-- Keymappings

vim.g.mapleader = " "

vim.keymap.set("n","[b","<cmd>bprev<cr>", {desc="Previous Buffer"})
vim.keymap.set("n","]b","<cmd>bnext<cr>", {desc="Next Buffer"})
vim.keymap.set("n","<leader>bd","<cmd>bdelete<cr>", {desc="Kill Current Buffer"})
vim.keymap.set("n","<leader>n","<cmd>noh<cr>", {desc="Clear Highlight"})
-- Open compiler
vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<F5>',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
