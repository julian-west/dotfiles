-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end


-- import telescope builtin safely
local builtin_setup, builtin = pcall(require, "telescope.builtin")
if not builtin_setup then
  return
end

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-d>"] = actions.delete_buffer
      },
    },
    file_ignore_patterns = { 
        ".git/",
        "__pycache__/",
        "env/",
        ".ipynb_checkpoints/",
        },
  }
}

-- nnoremap <silent> ;f <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>
-- telescope remaps
vim.keymap.set('n',';f', 
    function()
        builtin.find_files({
            ignore = true,
            hidden = true,
            find_command = rg,
            prompt_prefix = '🔍'
        })
    end)
vim.keymap.set('n',';r',
    function()
        builtin.live_grep({
            vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '--hidden' } 
        })
    end)
vim.keymap.set('n','\\\\', function()
    builtin.buffers()
    end)
vim.keymap.set('n',';t', function()
    builtin.help_tags()
    end)
vim.keymap.set('n',';d', function()
    builtin.diagnostics()
    end)

-- nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

