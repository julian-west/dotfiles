vim.api.nvim_set_keymap(
	"n",
	"<leader>do",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>d[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>d]", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })

-- https://smarttech101.com/nvim-lsp-diagnostics-keybindings-signs-virtual-text
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = {
		-- source = "always",  -- Or "if_many"
		prefix = "●", -- Could be '■', '▎', 'x'
	},
	severity_sort = true,
	float = {
		source = "always", -- Or "if_many"
	},
})
