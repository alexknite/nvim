require("config.settings")
require("config.keymaps")
require("config.lazy")

-- Function to apply transparency settings globally (incl. Nvim-Tree)
local function set_transparency()
	vim.cmd([[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalNC guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    hi StatusLine guibg=NONE ctermbg=NONE
    hi StatusLineNC guibg=NONE ctermbg=NONE
    hi VertSplit guibg=NONE ctermbg=NONE
    hi TabLine guibg=NONE ctermbg=NONE
    hi TabLineFill guibg=NONE ctermbg=NONE
    hi TabLineSel guibg=NONE ctermbg=NONE
    hi Pmenu guibg=NONE ctermbg=NONE
    hi PmenuSel guibg=NONE ctermbg=NONE
    hi EndOfBuffer guibg=NONE ctermbg=NONE
    hi NvimTreeNormal guibg=NONE ctermbg=NONE
    hi NvimTreeNormalNC guibg=NONE ctermbg=NONE
    hi NvimTreeWinSeparator guibg=NONE ctermbg=NONE
  ]])
end

-- Apply transparency settings initially
set_transparency()

-- Reapply on BufEnter and ColorScheme change
vim.api.nvim_create_autocmd({ "BufEnter", "ColorScheme" }, {
	pattern = "*",
	callback = set_transparency,
})
