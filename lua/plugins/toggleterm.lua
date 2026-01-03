return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    -- Configure ToggleTerm here
    direction = "float", -- or "horizontal", "vertical", "tab"
    float_opts = {
      border = "curved", -- or "single", "double", "shadow", etc.
    },
    -- Add any other options you want
  },
  keys = {
    { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    -- Add more keybindings if needed
  },
}

