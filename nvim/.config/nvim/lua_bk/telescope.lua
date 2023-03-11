local opts = { noremap=true }
-- telescope
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>Telescope buffers<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').grep_string({ search= vim.fn.input('Grep for > ') })<cr>", opts)
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope git_files<cr>", opts)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
