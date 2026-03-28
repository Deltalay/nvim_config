return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "lua_ls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index" },
        filetypes = { "c", "cpp" },
      })
      vim.lsp.enable("clangd")

      -- Lua
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },  -- stop lua_ls complaining about vim global
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
          },
        },
      })

      -- keymaps (only active when LSP attaches to a buffer)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local buf = args.buf
          vim.keymap.set("n", "gd",         vim.lsp.buf.definition,      { buffer = buf, desc = "Go to definition" })
          vim.keymap.set("n", "gr",         vim.lsp.buf.references,      { buffer = buf, desc = "References" })
          vim.keymap.set("n", "K",          vim.lsp.buf.hover,           { buffer = buf, desc = "Hover docs" })
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,          { buffer = buf, desc = "Rename" })
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,     { buffer = buf, desc = "Code action" })
        end,
      })

      -- diagnostic signs
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
      })
    end,
  },
}
