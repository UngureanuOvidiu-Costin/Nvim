
  -- Catppuccin import
  return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()    
      -- Catppuccin color scheme setup
      -- require("catppuccin").setup()  -- If we use config, it automatically uses require
      vim.cmd.colorscheme "catppuccin"
    end
  }


