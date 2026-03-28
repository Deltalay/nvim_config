return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = { "<leader>h", "<leader>v", "<leader>tf" },
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    shade_terminals = true,
    start_in_insert = true,
    persist_mode = true,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    vim.keymap.set({ "n", "t" }, "<leader>h", "<cmd>ToggleTerm direction=horizontal<CR>",
      { desc = "Horizontal terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>v", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Vertical terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Float terminal" })

    -- exit terminal mode with Esc
    vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
  end,
}
