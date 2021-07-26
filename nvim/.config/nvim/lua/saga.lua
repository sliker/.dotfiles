local saga = require("lspsaga")

saga.init_lsp_saga {
  border_style = "round"
}

local opts = { noremap=true, silent=true }

-- lsp provider to find the cursor word definition and reference
vim.api.nvim_set_keymap("n", " gh", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)

-- show hover doc
vim.api.nvim_set_keymap("n", "K", "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)

-- scroll down hover doc or scroll in definition preview
vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", opts)
-- code action
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
--vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
-- show signature help
vim.api.nvim_set_keymap("n", "<C-k>", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", opts)
-- rename
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
-- preview definition
vim.api.nvim_set_keymap("n", " gd", "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", opts)
-- diagnostic
vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", opts)
-- only show diagnostic if cursor is over the area
vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>", opts)
-- jump diagnostic
vim.api.nvim_set_keymap("n", "[g", "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", opts)
vim.api.nvim_set_keymap("n", "]g", "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", opts)
