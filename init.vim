filetype indent plugin on
syntax on

set noerrorbells
set sw=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8

set colorcolumn=80
highlight ColoColumn ctermbg=0 guibg=lightgray

call plug#begin(stdpath('data') . '/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'

" Git integration
Plug 'tpope/vim-fugitive'

" OmniSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Code
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'

call plug#end()

set termguicolors
set background=dark
let g:gruvbox_contrast_dark="medium"
colorscheme gruvbox

let mapleader = " "

" Update vimrc
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

" NO FLECHAS
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Resize buffers
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <right> :vertical resize +5<CR>

" Jump to vimrc
nnoremap <leader>e :e $MYVIMRC<CR>

" Terminal
nnoremap <c-t> :split<CR>:ter<CR>
vnoremap <c-t> :split<CR>:ter<CR>

" Splits
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>hs :sp<CR>

" Omnisharp
set completeopt=longest
set previewheight=5
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_selector_findusages = 'fzf'
