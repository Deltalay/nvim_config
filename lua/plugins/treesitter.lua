return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc" },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c", "cpp", "lua" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
