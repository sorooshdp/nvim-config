-- ~/.config/nvim/lua/plugins/lint.lua

return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      rust = { "clippy" },
    }

    -- Trigger linting on common events
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = vim.api.nvim_create_augroup("NvimLint", { clear = true }),
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
