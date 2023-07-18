-- <leader> is set to " "
vim.g.mapleader = " "

-- leader + ex will trigger the :Ex command, that
-- opens the file explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
