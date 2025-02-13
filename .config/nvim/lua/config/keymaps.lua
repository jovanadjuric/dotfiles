-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Start - close all buffers except current
vim.api.nvim_create_user_command("BufOnly", function()
  local current_buf = vim.api.nvim_get_current_buf()
  -- Get a list of all buffers
  local buffers = vim.api.nvim_list_bufs()
  for _, buf in ipairs(buffers) do
    if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
      -- Delete buffer if it's not the current buffer
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end
end, {})
-- End - close all buffers except current

-- Map <leader>bo to BufOnly command
vim.api.nvim_set_keymap("n", "<leader>bo", ":BufOnly<CR>", { noremap = true, silent = true })
