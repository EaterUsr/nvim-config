local plugins = {
  {
    "Konfekt/vim-wsl-copy-paste",
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      {
        "mfussenegger/nvim-lint",
        config = function()
          require "custom.configs.nvim-lint"
        end,
      },
      {
        "mhartington/formatter.nvim",
        config = function()
          require "custom.configs.formatter"
        end,
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "emmet-language-server",
        "css-lsp",
        "typescript-language-server",
        "eslint_d",
        "prettierd",
        "html-lsp",
        "grammarly-languageserver",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
      },
    },
  },
}

return plugins
