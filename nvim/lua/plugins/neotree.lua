return --- NeoTree (Project View) 
{ 
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x", 
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  config = function()  
    -- NeoTree setup
    -- Open project view in left side
    vim.keymap.set('n', '<C-e>', ':Neotree filesystem reveal left<CR>')
    vim.keymap.set('n', '<C-r>', ':Neotree filesystem close<CR>')
  end
}
