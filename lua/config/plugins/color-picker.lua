return {
  "ziontee113/color-picker.nvim",
  config = function()
    require("color-picker").setup({ -- for changing icons & mappings
      ["icons"] = { "■", "✏️" },
      ["border"] = "rounded", -- none | single | double | rounded | solid | shadow
      ["keymap"] = {       -- mapping example:
        ["U"] = "<Plug>ColorPickerSlider5Decrease",
        ["O"] = "<Plug>ColorPickerSlider5Increase",
      },
      ["background_highlight_group"] = "Normal", -- default
      ["border_highlight_group"] = "FloatBorder", -- default
      ["text_highlight_group"] = "Normal",     --default
    })

    vim.cmd([[hi FloatBorder guibg=NONE]])
    vim.keymap.set("n", "<leader>c", "<cmd>PickColor<cr>", {})
    vim.keymap.set("i", "<leader>cc", "<cmd>PickColorInsert<cr>", {})

    vim.keymap.set("n", "<leader>rgb", "<cmd>ConvertHEXandRGB<cr>", {})
    -- vim.keymap.set("n", "your_keymap", "<cmd>ConvertHEXandHSL<cr>", {})
  end,
}
