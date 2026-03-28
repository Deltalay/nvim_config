return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,  -- load before everything else
  opts = {
    style = "night",       -- night, storm, moon, day
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      sidebars = "dark",
      floats = "dark",
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
