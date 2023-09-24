return {
  { "loctvl842/monokai-pro.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },

  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  {
    "catppuccin/nvim",
    enabled = false,
  },

  {
    "SmiteshP/nvim-navic",
    enabled = false,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "black",
        "mypy",
        "clang-format",
      })
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      if type(opts.sources) == "table" then
        local nls = require("null-ls")
        vim.list_extend(opts.sources, {
          nls.builtins.formatting.black,
          nls.builtins.formatting.clang_format,
          nls.builtins.diagnostics.mypy,
        })
      end
    end,
  },
}
