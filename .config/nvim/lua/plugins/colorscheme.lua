return {
  { "gmr458/cold.nvim", lazy = true },
  { "folke/tokyonight.nvim", lazy = true },
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.opt.background = "dark"
        vim.cmd.colorscheme("cold")
      end,
      set_light_mode = function()
        vim.opt.background = "light"
        vim.cmd.colorscheme("tokyonight")
      end,
      fallback = "dark",
    },
    config = function(_, opts)
      require("auto-dark-mode").setup(opts)
      require("auto-dark-mode").init()
    end,
  },
}
