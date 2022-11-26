-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  -- asethetics
  use("bluz71/vim-nightfly-guicolors")
  use("nvim-tree/nvim-web-devicons") -- vs code icons
  use("nvim-lualine/lualine.nvim") -- Statusline

  --essential plugins
  use("tpope/vim-commentary")
  use("nvim-lua/plenary.nvim")

  --file search
  use('nvim-telescope/telescope.nvim')

   -- file explorer
  use("nvim-tree/nvim-tree.lua")

  -- git
  use("lewis6991/gitsigns.nvim")
  use("APZelos/blamer.nvim")
  use("tpope/vim-fugitive")

  -- syntax highlighting
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- lsp
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

  use("neovim/nvim-lspconfig")
  use("onsails/lspkind-nvim") -- vscode-like pictograms
  use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
  use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
  use("hrsh7th/nvim-cmp") -- Completion
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis

  use("L3MON4D3/LuaSnip")

  use('rmagatti/goto-preview')

  -- tmux
  use('jpalardy/vim-slime')
  use('christoomey/vim-tmux-navigator') -- allow compatibility with tmux and vim key bindings

end)

