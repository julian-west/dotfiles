local goto_status, goto_preview = pcall(require, "goto-preview")
if not goto_status then
	return
end

goto_preview.setup()

vim.keymap.set("n", "gpd", '<cmd>lua require("goto-preview").goto_preview_definition()<CR>')

vim.keymap.set("n", "gpt", '<cmd>lua require("goto-preview").goto_preview_type_definition()<CR>')
vim.keymap.set("n", "gpi", '<cmd>lua require("goto-preview").goto_preview_implementation()<CR>')
vim.keymap.set("n", "gP", '<cmd>lua require("goto-preview").close_all_win()<CR>')
-- " Only set if you have telescope installed
vim.keymap.set("n", "gpr", '<cmd>lua require("goto-preview").goto_preview_references()<CR>')
