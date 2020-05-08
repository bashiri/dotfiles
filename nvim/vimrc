" Settings <<<

set nocompatible
filetype plugin indent on
syntax on

" UFT-8 Encoding
set encoding=utf-8
scriptencoding utf-8

" Stick unamed register into system clipboard
if $TMUX ==# ''
    set clipboard+=unnamed
endif

set smartindent " Smart indent
set wrap        " Wrap lines
set smarttab
set number
set expandtab
set fileformats=unix,dos,unix

" copy with mouse without numberline
" https://vi.stackexchange.com/questions/767/how-to-select-and-copy-lines-to-clipboard-which-are-selected-by-mouse-without-li
set mouse=a

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Set the status line to something useful
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Hide the toolbar
set guioptions-=T

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" Set leader key
let mapleader = '\<space>'

" Always show cursor
set ruler

" Make sure any searches /searchPhrase doesn't need the \c escape character
set ignorecase

" Ignore case in search
set smartcase

" Autoload files that have changed outside of vim
set autoread

" Highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" Mod line supporting
set modeline
set modelines=5

" Set folding type in marker
set foldmethod=marker

" Set search results highlighting
set hlsearch
" Let's move between tabs and create them !
nmap <C-w>n :tabnext<CR>
nmap <C-w>p :tabprevious<CR>
nmap <C-w>c :tabnew<CR>

" >>>

" FileType Configurations <<<
augroup format

        " VHDL
        autocmd Filetype vhdl setlocal ts=2 sts=2 sw=2

        " Verilog
        autocmd Filetype vlang setlocal ts=4 sts=4 sw=4

        " C++
        autocmd Filetype cpp setlocal ts=4 sts=4 sw=4 expandtab

        " Json
        autocmd Filetype json setlocal ts=2 sts=2 sw=2 expandtab

        " Babel configuration
        autocmd BufRead,BufNewFile .babelrc setlocal filetype=json

        " HTML
        autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab

        " JavaScript
        autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab

        " Git commit
        autocmd Filetype gitcommit setlocal spell textwidth=72

augroup end
" >>>

" Commands <<<

" Command Mappings
command Spellcheck setlocal spell spelllang=en_us
" >>>

" Plugins <<<
call plug#begin('~/.vim/plugged')

" git
Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'cohama/agit.vim'        " A powerful Git log viewer
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" nerdtree
Plug 'jistr/vim-nerdtree-tabs'     " NERDTree and tabs together in Vim, painlessly
Plug 'scrooloose/nerdtree'         " A tree explorer plugin for vim.
Plug 'Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status

" fuzzy finder 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" lean & mean status/tabline for vim that's light as air
Plug 'drewtempelmeyer/palenight.vim'

" vim plugin to list, select and switch between buffers.
Plug 'jeetsukumaran/vim-buffergator'

Plug 'wellle/targets.vim' " vim plugin that provides additional text objects

Plug 'sheerun/vim-polyglot' " a solid language pack for Vim.

" conquer of compilation 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" >>>

" Plugins Configurations <<<

" wakatime <<<
let g:wakatime_PythonBinary = 'python3'
let g:wakatime_ScreenRedraw = 1
" >>>
"
" gitgutter <<<
let g:gitgutter_enabled = 1
let g:gitgutter_eager = 0
highlight clear SignColumn
" >>>

" nerdtree <<<
map <C-n> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_synchronize_view = 0

" Airline (status line) >>>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#taboo#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'
let g:airline_section_c = '%{strftime("%c")}'
set background=dark
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

let g:palenight_terminal_italics=1 " Italics for my favorite color scheme

" >>>

