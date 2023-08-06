local plugins = {
  {
    import = "custom.configs.coc",
  },
  {
    "vim-airline/vim-airline",
    lazy = false,
  },
  {
    "preservim/tagbar",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
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
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "flake8",
        "pyright",
        "eslint-lsp",
        "clangd",
        "typescript-language-server",
        "bash-language-server",
      },
    },
  },
}
return plugins
