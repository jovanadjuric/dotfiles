-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd("syntax on")

vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

vim.o.compatible = false
vim.o.backspace = "indent,eol,start"
vim.o.number = true
vim.o.hidden = true

vim.o.ruler = true
vim.o.tabpagemax = 40
vim.o.mouse = "a"
vim.o.background = "dark"
vim.o.autoindent = true

vim.o.title = true
vim.o.backup = false
vim.o.writebackup = false

vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showcmd = true
vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.history = 1000
vim.o.wildmenu = true
vim.o.encoding = "utf-8"
vim.o.linebreak = true
vim.o.scrolloff = 3
vim.o.wrap = true

vim.o.confirm = true
vim.o.modeline = false

vim.o.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"

vim.g.mapleader = " "
vim.g.snacks_animate = false
vim.g.ai_cmp = false
