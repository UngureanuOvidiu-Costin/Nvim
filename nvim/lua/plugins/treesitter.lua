-- TreeSitter import
return { 
  'nvim-treesitter/nvim-treesitter', 
  build = ':TSUpdate',
  config = function()
    -- TreeSitter setup
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { 
        enable = true, 
        disable = { "csv", "tsv" } -- Disable Treesitter for CSV and TSV
      },
      indent = { enable = true }
    })
  end
}

