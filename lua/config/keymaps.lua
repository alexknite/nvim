vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = true
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Save
map("n", "<leader>w", "<CMD>w<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jj", "<ESC>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Indentation
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

-- Telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Find string in cwd" })
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Fuzzy find opened files" })
map("n", "<leader>fs", "<CMD>Telescope git_status<CR>", { desc = "Show git file diffs" })
map("n", "<leader>fc", "<CMD>Telescope git_commits<CR>", { desc = "Browse git commits" })

-- Nvim Tre
map("n", "<leader>r", "<CMD>NvimTreeFocus<CR>")
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")

-- Tabs
map("n", "<leader>l", "<CMD>BufferLineCycleNext<CR>")
map("n", "<leader>h", "<CMD>BufferLineCyclePrev<CR>")
map("n", "<leader>ww", "<CMD>bdelete<CR>")
