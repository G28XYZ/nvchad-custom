local M = {}

M.ui = {
  -- hl_override = "custom.highlights",
  theme = "decay",
  transparency = true,
}

M.treesitter = {
  ensure_installed = {
    "lua",
    "html",
    "css",
  },
}

M.format = {
  n = {
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.formatting()
      end,
      "   lsp formatting",
    },
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    side = "right",
    width = 20,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- you cant directly call a module in chadrc thats related to the default config
-- Thats because most probably that module is lazyloaded
-- In this case its 'cmp', we have lazyloaded it by default
-- So you need to make this override field a function, instead of a table
-- And the function needs to return a table!

M.cmp = function()
  local cmp = require "cmp"

  return {
    mapping = {
      ["<C-d>"] = cmp.mapping.scroll_docs(-8),
    },
  }
end

return M
