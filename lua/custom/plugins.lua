local plugins = {
  {
    import = "custom.configs.coc",
  },
  {
    import = "custom.configs.tokyonight",
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    import = "custom.configs.chatgpt",
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      local opts = { silent = true }
      local keymap = vim.api.nvim_set_keymap
      vim.cmd [[imap <script><silent><nowait><expr> <C-a> copilot#Accept()]]
      vim.g.copilot_not_tab_map = true
      keymap("i", "<C-n>", "<Plug>(copilot-next)", opts)
      keymap("i", "<C-p>", "<Plug>(copilot-previous)", opts)
    end,
  },
  {
    import = "custom.configs.tagbar",
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
