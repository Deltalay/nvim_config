return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    check_ts = true, -- use treesitter to check pairs
    disable_filetype = { "TelescopePrompt" },
  },
}
