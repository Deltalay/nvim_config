vim.keymap.set("n", "<leader>e", "<cmd>Neotree reveal<CR>", { desc = "Open file tree" })
vim.keymap.set("n", "<C-n>", "<cmd>Neotree close<CR>", { desc = "Close file tree" })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<Tab>",   "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>",           { desc = "Close buffer" })

