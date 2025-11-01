return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    { "<leader>o", "<cmd>Neotree focus<CR>", desc = "Focus Neo-tree" },
  },
  opts = {
    filesystem = {
      follow_current_file = true,
      use_libuv_file_watcher = true,
    },
    window = {
      width = 30,
      mappings = {
        ["<space>"] = "toggle_node",
        ["<cr>"] = "open",
        ["S"] = "split_with_window_picker",
        ["s"] = "vsplit_with_window_picker",
      },
    },
  },
}
