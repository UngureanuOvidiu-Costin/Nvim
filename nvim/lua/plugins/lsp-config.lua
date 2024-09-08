return {
  {
    "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Check if vim.lsp exists before setting up
      if vim.lsp then
        lspconfig.lua_ls.setup({})
        lspconfig.rust_analyzer.setup({})
        
        -- Keybinding for hover
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      else
        print("LSP not found")
      end
    end
  }
}
