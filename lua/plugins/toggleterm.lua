return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-\>]],
      direction = "horizontal", -- or "float", "vertical"
      persist_size = true,
    })

    local Terminal = require("toggleterm.terminal").Terminal

    local run_dev = Terminal:new({ cmd = "pnpm run dev", direction = "vertical", hidden = true })

    vim.keymap.set("n", "<leader>tt", function() run_dev:toggle() end, { desc = "Toggle pnpm run dev" })
  end,
}