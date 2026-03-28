return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 500,   -- ms before popup appears
    icons = {
      mappings = true,
    },
    spec = {
      { "<leader>f", group = "find" },
      { "<leader>w", group = "save" },
      { "<leader>q", group = "quit" },
      { "<leader>r", group = "rename" },
      { "<leader>c", group = "code" },
      { "<leader>g", group = "git" },
    },
  },
}
