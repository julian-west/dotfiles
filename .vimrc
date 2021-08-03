""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
" core plugins
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'                             " auto complete
Plugin 'scrooloose/nerdtree'                                " side bar file tree
Plugin 'tpope/vim-fugitive'                                 " git
Plugin 'airblade/vim-gitgutter'                             " show git changes
Plugin 'junegunn/fzf.vim'

" python plugins
Plugin 'vim-scripts/indentpython.vim'                       " python indentation
Plugin 'psf/black'                                          " black auto formatting
Plugin 'jpalardy/vim-slime'                                 " tmux send lines to REPL
Plugin 'vim-python/python-syntax'                           " better Python syntax highlighting

" other
Plugin 'vim-airline/vim-airline'                            " info bar at bottom
Plugin 'gruvbox-community/gruvbox'                          " color scheme
Plugin 'tpope/vim-surround'                                 " example: cs([
Plugin 'tpope/vim-commentary'                               " comment code
Plugin 'chrisbra/Colorizer'                                 " colour hex codes
Plugin 'mhinz/vim-startify'                                 " open previous files
Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call vundle#end()


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

colorscheme gruvbox
set background=dark

set updatetime=100

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
let g:slime_python_ipython = 1

let g:ycm_path_to_python_interpreter = '/usr/local/bin/python3'

"""""""""""""""""""""""""""""""
" Key remappings
""""""""""""""""""""""""""""""'

let mapleader = ","
inoremap jj <Esc>

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

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" YCM commands
noremap <leader>gd :YcmCompleter GoToDefinition<CR>

"""""""""""""""""""""""""""""""
" Shortcuts
""""""""""""""""""""""""""""""'
" quickly go to vimrc
nnoremap <leader>v :e $HOME/.vimrc<CR>

" start Python terminal or iPython REPL
" map <leader>tp :term:python
" map <leader>tip :term:ipython
" easy access to terminal (to return to file press fg)
nnoremap <leader>t :stop<CR>

"""""""""""""""""""""""""""""""
" Formatting
""""""""""""""""""""""""""""""'
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=88 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""'
" run black formatter on saving Python files
autocmd BufWritePre *.py execute ':Black'


"""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""'
"Markdown preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']
