local status, git = pcall(require, "git")
if not status then
	return
end

git.setup({
	default_mappings = true,
	keymaps = {
		--open blame window
		blame = "<Leader>gb",
	},
})
