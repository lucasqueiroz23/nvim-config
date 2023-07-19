-- leader + dir will trigger the :Ex command, that
-- opens the file explorer
vim.keymap.set("n", "<leader>dir", vim.cmd.Ex)

-- move stuff up and down when in visual mode
-- with capital K and J
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- when scrolling with ctrl u and d,
-- don't change cursor position
vim.keymap.set('n','<C-d>', '<C-d>zz')
vim.keymap.set('n','<C-u>', '<C-u>zz')

-- after deleting something to yank it later,
-- use <leader>p if you don't want to overwrite
-- the yank buffer
vim.keymap.set('x', '<leader>p', "\"_dP")

