local M = {}

local pluginConfs = require "custom.plugins.configs"

M.plugins = {
  user = {
    ["neovim/nvim-lspconfig"] = {
      opt = true,
      setup = function()
        require("core.lazy_load").on_file_open "nvim-lspconfig"
      end,
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },
    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require "custom.plugins.null-ls"
      end,
    },
    ["NvChad/nvterm"] = {
      module = "nvterm",
      config = function()
        require "plugins.configs.nvterm"
        require "custom.plugins.nvterm"
      end,
    },
    ["mustache/vim-mustache-handlebars"] = {},
    ["craigemery/vim-autotag"] = {},
    ["mattn/emmet-vim"] = {},
    ["alvan/vim-closetag"] = {},
    ["AndrewRadev/tagalong.vim"] = {},
    ["kylechui/nvim-surround"] = {},
    ["folke/tokyonight.nvim"] = {},
    ["akinsho/toggleterm.nvim"] = {},
    ["karb94/neoscroll.nvim"] = {},
    ["pineapplegiant/spaceduck"] = {},
  },

  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "bash",
        "comment",
        "cpp",
        "css",
        "graphql",
        "html",
        "javascript",
        "json",
        "lua",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },

    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "deno",
        "emmet-ls",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        "typescript-language-server",
        "yaml-language-server",

        -- shell
        "shellcheck",
      },
    },
    ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
  },

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  status = { colorizer = true },
}

M.mappings = require "custom.mappings"

return M
