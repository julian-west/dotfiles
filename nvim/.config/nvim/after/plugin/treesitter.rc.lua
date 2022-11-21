require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "python",
    "json",
    "yaml",
    "html",
    "css",
    "bash",
    "dockerfile",
    "markdown",
    "make",
    "lua",
  },
  auto_install = true,
}
