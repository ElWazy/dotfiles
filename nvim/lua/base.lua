vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.guicursor = ""

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.title = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2

vim.opt.scrolloff = 10

vim.opt.shell = 'bash'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.breakindent = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

vim.opt.errorbells = false

vim.opt.updatetime = 50

vim.g.mapleader = " "
