-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Start Codeium toggler
local Source = require("codeium.source")

local function is_codeium_enabled()
  local enabled = vim.b["codeium_enabled"]
  if enabled == nil then
    enabled = vim.g["codeium_enabled"]
    if enabled == nil then
      enabled = true -- enable by default
    end
  end
  return enabled
end

---@diagnostic disable-next-line: duplicate-set-field
function Source:is_available()
  local enabled = is_codeium_enabled()
  ---@diagnostic disable-next-line: undefined-field
  return enabled and self.server.is_healthy()
end

vim.api.nvim_set_keymap("n", "<leader>tC", "", {
  callback = function()
    local new_enabled = not is_codeium_enabled()
    vim.b["codeium_enabled"] = new_enabled
    if new_enabled then
      vim.notify("Codeium enabled in buffer")
    else
      vim.notify("Codeium disabled in buffer")
    end
  end,
  noremap = true,
})
-- End Codeium toggler

-- Close all buffers except current
-- Close all buffers except current
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

-- Map <leader>bo to BufOnly command
vim.api.nvim_set_keymap("n", "<leader>bo", ":BufOnly<CR>", { noremap = true, silent = true })
