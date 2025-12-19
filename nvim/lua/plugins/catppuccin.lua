return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- très important
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        treesitter = true,
        telescope = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        native_lsp = {
          enabled = true,
        },
      },
    },
  },
}

