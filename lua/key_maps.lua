local map = vim.api.nvim_set_keymap
map('t', '<Esc>', '<C-\\><C-n>', {})

-- Key mappings that actually work
vim.keymap.set('i', '<C-g>', '<Plug>(copilot-next)', { desc = 'Next Copilot suggestion' })
vim.keymap.set('i', '<C-f>', '<Plug>(copilot-previous)', { desc = 'Previous Copilot suggestion' })
vim.keymap.set('i', '<C-l>', '<Plug>(copilot-accept-word)', { desc = 'Accept Copilot word' })
vim.keymap.set('i', '<C-j>', '<Plug>(copilot-accept)', { desc = 'Accept Copilot suggestion' })
