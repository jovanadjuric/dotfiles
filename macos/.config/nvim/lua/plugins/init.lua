if vim.fn.has("nvim-0.9.0") == 0 then
  vim.api.nvim_echo({
    { "LazyVim requires Neovim >= 0.9.0\n", "ErrorMsg" },
    { "Press any key to exit", "MoreMsg" },
  }, true, {})
  vim.fn.getchar()
  vim.cmd([[quit]])
  return {}
end

return {
  { "folke/lazy.nvim", version = "*" },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/which-key.nvim",
  "folke/neodev.nvim",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  },
  { "neoclide/coc.nvim", branch = "release" },
  { "fatih/vim-go" },
  { "junegunn/fzf" },
  { "junegunn/fzf.vim" },
  { "stsewd/fzf-checkout.vim" },
  { "jiangmiao/auto-pairs" },
  { "voldikss/vim-floaterm" },
  { "charlespascoe/vim-go-syntax" }

}
