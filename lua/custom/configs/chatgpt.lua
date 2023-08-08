local M = {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
}

M.config = function()
  require("chatgpt").setup()
end

M.dependencies = {
  "MunifTanjim/nui.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
}

return M
