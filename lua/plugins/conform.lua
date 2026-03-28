return {
  "stevearc/conform.nvim",
  lazy = false,
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        c   = { "clang_format" },
        cpp = { "clang_format" },
      },
      format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = true,
      },
    })
    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format buffer" })
  end,
}
