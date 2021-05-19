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
set nohlsearch
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set scrolloff=8
set guicursor=

set colorcolumn=80
highlight ColoColumn ctermbg=0 guibg=lightgray

call plug#begin(stdpath('data') . '/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'aklt/plantuml-syntax'
Plug 'junegunn/goyo.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" ## Code ##
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'

" C#
Plug 'OmniSharp/omnisharp-vim'

" Find
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" HTML
Plug 'mattn/emmet-vim'
 
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" PlantUML
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

call plug#end()

let g:OmniSharp_server_use_mono = 1
inoremap <expr> <Tab> pumvisible() ? '<C-n>' :                                                                                                                    
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

set termguicolors
set background=dark
let g:gruvbox_contrast_dark="medium"
colorscheme gruvbox

if executable('rg')
    let g:rg_derive_root='true'
endif

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

let mapleader = " "

" Update vimrc
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

" Jump to vimrc
nnoremap <leader>e :e $MYVIMRC<CR>

" NO FLECHAS
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Search References
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :Files<CR>

" Resize buffers
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <right> :vertical resize +5<CR>

" Terminal
nnoremap <c-t> :split<CR>:ter<CR>
vnoremap <c-t> :split<CR>:ter<CR>

" Splits
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>hs :sp<CR>

" Close Buffer
nnoremap <leader>q :q<CR>

