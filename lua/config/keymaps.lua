local map = vim.keymap.set
-- general bindings :

-- ergonomic exiting
map("i", "jk", "<ESC>")
map("v", "jk", "<ESC>")
map("x", "jk", "<ESC>")
map("s", "jk", "<ESC>")
map("c", "jk", "<ESC>")


-- buffer binds
map('n', '<leader>s', '<cmd>split<CR>')
map('n', '<leader>v', '<cmd>vsplit<CR>')
map('n', '<leader>n', '<cmd>new<CR>')

map('n', '<leader>q', '<cmd>q<CR>')
map('n', '<leader>q!', '<cmd>q!<CR>')
map('n', '<leader>bd', '<cmd>bd<CR>')
map('n', '<leader>bd!', '<cmd>bd!<CR>')

-- cursor mov
map('n', '<leader>k', '<cmd>wincmd k<CR>')
map('n', '<leader>j', '<cmd>wincmd j<CR>')
map('n', '<leader>h', '<cmd>wincmd h<CR>')
map('n', '<leader>l', '<cmd>wincmd l<CR>')

-- window mov
map('n', '<leader>K', '<cmd>wincmd K<CR>')
map('n', '<leader>J', '<cmd>wincmd J<CR>')
map('n', '<leader>H', '<cmd>wincmd H<CR>')
map('n', '<leader>L', '<cmd>wincmd L<CR>')


-- clears highlighting
map('n', '<leader>nh', '<cmd>nohlsearch<CR>')

-- Snacks.explorer bind
map('n', '<leader>ntw', '<cmd>Neotree<CR>')

-- lspbinds
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')


-- telescope binds
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function()
	builtin.find_files({ hidden = true })
end)

vim.keymap.set('n', '<leader>fF', function()
	builtin.find_files({ hidden = true, cwd = '/root' })
end)

vim.keymap.set('n', '<leader>fg', function()
	builtin.live_grep({ hidden = true })
end)

vim.keymap.set('n', '<leader>fG', function()
	builtin.live_grep({ hidden = true, cwd = '/root' })
end)

vim.keymap.set('n', '<leader>fb', builtin.buffers)

vim.keymap.set('n', 'gD', '<cmd>Telescope lsp_definitions<CR>')
