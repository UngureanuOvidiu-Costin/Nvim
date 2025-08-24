
  -- Telescope import
  return { 
    {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.9', 
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      -- Telescope setup
      local builtin = require("telescope.builtin")
      -- Search file in project
      vim.keymap.set('n', '<C-n>', builtin.find_files, {})
      -- Search string in project
      -- sudo apt-get install ripgrep
      vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
    end
    },
    {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
        require("telescope").setup({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
              }
            }
          }
        })
      require("telescope").load_extension("ui-select")
      end
    },
  }
