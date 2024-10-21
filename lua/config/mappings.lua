vim.g.mapleader = " "
vim.keymap.set("n", "<leader>dv", vim.cmd.Ex)
-- Telescope setup
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fw", ":Telescope live_gre<cr>")
