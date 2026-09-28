return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach",
  priority = 1000, -- load before other diagnostic-related plugins
  config = function()
    require("tiny-inline-diagnostic").setup({
      preset = "modern", -- try "classic", "minimal", "powerline" too
    })

    -- tiny-inline-diagnostic replaces the built-in virtual_text, so turn it off
    vim.diagnostic.config({ virtual_text = false })
  end,
}