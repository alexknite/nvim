return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
    config = function()
        require("telescope").setup {
            defaults = {
                mappings = {
                    i = {
                        ["<C-u>"] = false, -- Remove default mapping (scroll up preview)
                        ["<C-d>"] = false, -- Remove default mapping (scroll down preview)
                    },
                },
            }
        }
    end
}
