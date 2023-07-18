local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- add current file to harpoon
vim.keymap.set("n", "<leader>af", mark.add_file)

-- you can enter the harpoon ui with <C-e>.
-- Once you're there, you can change the number
-- assigned to each file.
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- file navigation: you can add lots of files to harpoon, 
-- but if you want to enter one quickly(i.e., without entering
-- the ui), you can use one of these shortcuts.
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
