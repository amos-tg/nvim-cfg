vim.opt.shortmess:append "I"   

-- fix treesitter after they broke everything :(
--
local install_dir = (vim.fn.stdpath("data") .. "/site")
vim.opt.runtimepath:prepend(install_dir);

require('config.lazy')
require('config.non-lazy-aggregator')
