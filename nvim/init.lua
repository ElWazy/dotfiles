require('base')
require('highlights')
require('netrw')
require('plugins')

vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.loaded_perl_provider = 0

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_win = has "win32"

if is_win then
  require('windows')
end
