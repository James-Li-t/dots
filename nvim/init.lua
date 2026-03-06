require("core.mappings")
require("core.options")
--
-- disable netrw at the very start of your init.lua
--
--

vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then return end
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
})

vim.api.nvim_create_autocmd("UILeave", {
  callback = function() io.write("\027]111\027\\") end,
})
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.termguicolors = true

vim.g.localleader = ","

vim.o.cmdheight = 0
vim.o.autochdir = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end


vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

require("core.nvim-cmp")
require("bufferline").setup{}

vim.cmd.colorscheme("kanagawa-dragon")

require('nvim-ts-autotag').setup({
  filetypes = {"rust","rs"},
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
vim.g.vimtex_view_method = 'zathura'

-- local lspconfig = require('lspconfig')
-- local configs = require('lspconfig/configs')
--
 vim.lsp.config['luals'] = {
   -- Command and arguments to start the server.
   cmd = { 'lua-language-server' },

   -- Filetypes to automatically attach to.
   filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue", "rust", "rs" },

   -- Sets the "root directory" to the parent directory of the file in the
   -- current buffer that contains either a ".luarc.json" or a
   -- ".luarc.jsonc" file. Files that share a root directory will reuse
   -- the connection to the same LSP server.
   -- Nested lists indicate equal priority, see |vim.lsp.Config|.
   root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },

   -- Specific settings to send to the server. The schema for this is
   -- defined by the server. For example the schema for lua-language-server
   -- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
   settings = {
     Lua = {
       runtime = {
         version = 'LuaJIT',
       }
     }
   }
 }
 vim.lsp.enable("luals")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

--[[lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue", "rust", "rs"},
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
--]]

vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
vim.diagnostic.config({virtual_text = false})
require('feline').setup()
