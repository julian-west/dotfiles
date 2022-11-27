-- set leader key to space
vim.g.mapleader = ","

local keymap = vim.keymap

-- copy and paste from register
keymap.set("", "<leader>y", '"*y')
keymap.set("", "<Leader>p", '"*p')

-- pane navigation
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-h>", "<C-w>h")

-- split panes
keymap.set("n", "ss", ":split<CR><C-w>w")
keymap.set("n", "sv", ":vsplit<CR><C-w>w")

-- find and replace under cursor
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/")

-- autoformat files using null-ls
keymap.set("n", "<leader>b", "<cmd>lua vim.lsp.buf.format()<CR>")
