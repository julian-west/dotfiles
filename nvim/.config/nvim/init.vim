"""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""
syntax on
set nocompatible
filetype off
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

set number
set scrolloff=10
set smartcase
set noerrorbells
set encoding=utf-8
set cursorline
set colorcolumn=88
set mouse=a
set splitbelow splitright
set spell spelllang=en_us " z= see options, zg to add to dict, ]s move next
set updatetime=100


"""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

if has("nvim")
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'neovim/nvim-lspconfig'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

"    Plug 'hrsh7th/cmp-nvim-lsp'
"    Plug 'hrsh7th/cmp-buffer'
"    Plug 'hrsh7th/nvim-cmp'

    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'airblade/vim-gitgutter'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'gruvbox-community/gruvbox'
endif

call plug#end()


colorscheme gruvbox
set background=dark

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""
" Key remappings
""""""""""""""""""""""""""""""'

let mapleader = ","

" insert blank lines without going into insert mode
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" copy and paste from 'register'
vmap <C-c> "+y
vmap <C-v> c<esc>"+p

" enclose word in quotes
nnoremap <leader>' ciW'<C-r>"'<Esc>
nnoremap <leader>" ciW"<C-r>""<Esc>

" pane navigation
nmap  <C-j> <C-w>j
nmap  <C-k> <C-w>k
nmap  <C-l> <C-w>l
nmap  <C-h> <C-w>h

" split panes
nmap ss :split<CR><C-w>w
nmap sv :vsplit<CR><C-w>w

" adjust window sizes
noremap <silent> <S-Left> :vertical resize +3<CR>
noremap <silent> <S-Right> :vertical resize -3<CR>
noremap <silent> <S-Up> :resize -3<CR>
noremap <silent> <S-Down> :resize +3<CR>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" git commands
nmap <leader>gs :G<CR>
nmap <leader>gg :diffget //2<CR>
nmap <leader>gh :diffget //3<CR>

