lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
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
  },
}
EOF
