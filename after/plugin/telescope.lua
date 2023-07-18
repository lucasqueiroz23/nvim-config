-- import the plugin
local builtin = require('telescope.builtin')

------ keymaps
--<leader> is set to " ". check lucasqueiroz/remap.lua

-- ff: find file.
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- fgf: find git file
vim.keymap.set('n', 'fgf', builtin.git_files, {})

-- gr: grep 
vim.keymap.set('n', '<leader>gr', function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") }) 
end)

