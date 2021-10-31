syntax on

set modelines=0
set encoding=utf-8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set smartcase
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set clipboard=unnamedplus
set scrolloff=8

set t_Co=256
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

" Jump to vimrc
nnoremap <leader>e :e $MYVIMRC<CR>

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
