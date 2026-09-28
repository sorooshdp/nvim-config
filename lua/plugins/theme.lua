return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",  -- Options: storm, night, moon, day
      transparent = true,
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}

