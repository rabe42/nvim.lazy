local map = vim.api.nvim_set_keymap
map("t", "<Esc>", "<C-\\><C-n>", {})

map("n", "<leader><C-t>", ":vsplit term://nu<CR>", {})
map("n", "<leader><S-t>", ":vsplit term://powershell.exe<CR>", {})
