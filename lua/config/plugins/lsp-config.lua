return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "clangd",
          "html",
          "cssls",
          "ts_ls",
          "ast_grep",
          "ruby_lsp",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Define shared defaults
      local default_config = {
        capabilities = capabilities,
      }

      -- Configure servers
      local servers = {
        "lua_ls",
        "pyright",
        "clangd",
        "html",
        "cssls",
        "ts_ls",
        "ast_grep",
        "ruby_lsp",
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, default_config)
        vim.lsp.enable(server)
      end

      -- Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
    end,
  },
}
