if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
    vim.o.laststatus = 2
--    vim.o.statusline = '%F%m%r%h%w%=(%{&ff}/%Y)\\ (line\\ %l/%L,\\ col\\ %c)'
    require("config.coc")
end

vim.cmd('syntax on')

vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')

vim.o.compatible = false
vim.o.backspace = 'indent,eol,start'
vim.o.number = true
vim.o.hidden = true

vim.o.ruler = true
vim.o.tabpagemax = 40
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.mouse = 'a'
vim.o.background = 'dark'
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
vim.o.showmatch = tre
vim.o.hlsearch = true
vim.o.history = 1000
vim.o.wildmenu = true
vim.o.encoding = 'utf-8'
vim.o.linebreak = true
vim.o.scrolloff = 3

vim.o.confirm = true
vim.o.modeline = false

vim.o.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'

vim.g.mapleader = " "
vim.opt.clipboard:append("unnamedplus")


require("config.floaterm")
require("config.fzf")
require("config.lazy")
require("config.evil-lualine")
