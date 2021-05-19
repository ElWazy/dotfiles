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
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set clipboard=unnamedplus

set t_Co=256
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-utils/vim-man'
Plug 'mattn/emmet-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "

" Update vimrc
nmap <F5> :source ~/.vimrc<CR>
vmap <F5> :source ~/.vimrc<CR>

" Jump to vimrc
nnoremap <leader>e :e $MYVIMRC<CR>

" NO FLECHAS
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

nnoremap <Leader>ps :Rg<SPACE>

" Resize buffers
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <right> :vertical resize +5<CR>

" Splits
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>hs :sp<CR>
