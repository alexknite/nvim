return {
    "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup()
    vim.keymap.set("n", "<leader>r", "<CMD>NvimTreeFocus<CR>")
    vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
  end
}
