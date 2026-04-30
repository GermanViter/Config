local ok, variant = pcall(require, "config.theme_variant")
if not ok then
  variant = "main"
end

local is_catppuccin = variant == "catppuccin"

return {
  -- Catppuccin
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    enabled = is_catppuccin,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  -- Rosé Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = not is_catppuccin,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = variant,
        dark_variant = "main",
        dim_inactive_windows = false,
        extend_background_behind_borders = true,
        transparent_background = true,
        styles = {
          transparency = true,
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
