return {
  { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
  },
  { -- The task runner we use
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1
      },
    },
  },
	{"catppuccin/nvim"},
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
    },
  },
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end,
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	  }
	},
	{"folke/neodev.nvim"},

  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {
    "evesdropper/luasnip-latex-snippets.nvim",
  }, 
  {'hrsh7th/nvim-cmp'},
  {
    "lervag/vimtex",
    init = function()
      -- Use init for configuration, don't use the more common "config".
    end
  },
  {"L3MON4D3/LuaSnip"},
  {"rebelot/kanagawa.nvim"},
  {"rafamadriz/friendly-snippets"},
  {"saadparwaiz1/cmp_luasnip"},
  {"jalvesaq/Nvim-R"},
  {'windwp/nvim-autopairs',
    event = "InsertEnter"},
  {'windwp/nvim-ts-autotag'},
  {"williamboman/mason.nvim"},
  {'williamboman/mason-lspconfig.nvim'},
  {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      },
      config = true,
      keys = {
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            source = "filesystem",
            position = "left",
            width = "fit_content",
          })
        end,
        desc = "Toggles File Explorer",
      },
    },  
  },
  {"nvim-tree/nvim-tree.lua", 
    opts = {},
  },
  {'akinsho/bufferline.nvim'},
  {'VonHeikemen/fine-cmdline.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
  },

}
