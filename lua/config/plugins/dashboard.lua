return {
  "glepnir/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup({
      theme = "doom",
      config = {
        header = {
          "",
          "",
          "",
          "",
          " _____  ___    _______    ______  ___      ___  __     ___      ___ ",
          "(\"   \\|\"  \\  /\"     \"|  /    \" \\|\"  \\    /\"  ||\" \\   |\"  \\    /\"  |",
          "|.\\\\   \\    |(: ______) // ____  \\\\   \\  //  / ||  |   \\   \\  //   |",
          "|: \\.   \\\\  | \\/    |  /  /    ) :)\\\\  \\/. ./  |:  |   /\\\\  \\/.    |",
          "|.  \\    \\. | // ___)_( : (____/ //  \\.    //   |.  |  |: \\.        |",
          "|    \\    \\ |(:      \"|\\        /    \\\\   /    /\\  |\\ |.  \\    /:  |",
          " \\___|\\____\\) \\_______) \\\"_____/      \\__/    (__\\_|_)|___|\\__/|___|",
          "",
          "",
          "",
          "",
          "",
        },
        center = {
          { icon = "  ", desc = " New File", action = "ene | startinsert", key = "n" },
          { icon = "  ", desc = " File Explorer", action = "NvimTreeToggle", key = "e" },
          { icon = "  ", desc = " Find File", action = "Telescope find_files", key = "f" },
          { icon = "  ", desc = " Recent Files", action = "Telescope oldfiles", key = "r" },
          { icon = "  ", desc = " Update Plugins", action = "Lazy sync", key = "u" },
          { icon = "  ", desc = " Quit Neovim", action = "qa", key = "q" },
        },
        footer = { "🚀 Happy Coding" },
      },
    })
  end,
}
