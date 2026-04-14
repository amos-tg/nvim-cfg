-- start screen 
vim.opt.shortmess:append "I"   

-- Numbering
vim.o.relativenumber = true
vim.o.number = true


-- Controls
vim.g.mapleader = " "
vim.o.virtualedit = 'all'


-- Theming
vim.o.background = 'dark'
vim.o.winborder = 'double'


-- Netrw/(File Explorer) 
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'


-- Indenting
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true


-- Line Length Controls 
vim.o.textwidth = 80
vim.o.linebreak = true
vim.o.wrap = true
