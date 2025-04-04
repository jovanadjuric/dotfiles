return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    image = {
      doc = {
        inline = false,
      },
    },
    picker = {
      toggles = {
        hidden = "m",
      },
      win = {
        input = {
          keys = {
            ["<a-m>"] = { "toggle_hidden", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<a-m>"] = "toggle_hidden",
          },
        },
      },
    },
  },
}
