local keyset = vim.keymap.set
local opts = {silent = true, nowait = true}

-- FZF
keyset("n", "<leader>f", ":Files<cr>", opts)
keyset("n", "<leader>F", ":AllFiles<cr>", opts)
keyset("n", "<leader>b", ":Buffers<cr>", opts)
keyset("n", "<leader>h", ":History<cr>", opts)
keyset("n", "<leader>r", ":Rg<cr>", opts)
keyset("n", "<leader>R", ":Rg<space>", opts)
keyset("n", "<leader>gb", ":GBranches<cr>", opts)

