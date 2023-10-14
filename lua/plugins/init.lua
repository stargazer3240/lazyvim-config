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
    "RRethy/vim-illuminate",
    enabled = false,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = false,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "nix",
      })
    end,
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
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        nix = { "alejandra" },
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "mypy" },
      },
    },
  },
}
