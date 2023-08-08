local M = {
  "preservim/tagbar",
  lazy = false,
}

M.config = function()
  local opts = { silent = true, noremap = true }
  local keymap = vim.api.nvim_set_keymap
  keymap("n", "<F8>", ":TagbarToggle<CR>", opts)
end

return M
