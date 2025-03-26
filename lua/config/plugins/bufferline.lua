return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			options = {
				separator_style = "padded_slant",
			},
		})
		vim.keymap.set("n", "<leader>l", "<CMD>BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<leader>h", "<CMD>BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "<leader>ww", "<CMD>bdelete<CR>")
	end,
}
