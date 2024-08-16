local keyset = vim.keymap.set
local opts = {silent = true, nowait = true }

-- Floaterm
keyset("n", "<leader>t", ":FloatermToggle<cr>", opts)
