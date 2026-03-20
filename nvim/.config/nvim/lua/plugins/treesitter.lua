return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "lua", "vim", "vimdoc", "javascript", "typescript" }, -- Add languages you need
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
