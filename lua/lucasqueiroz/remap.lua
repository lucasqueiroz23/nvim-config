--[[
     Remap: no modo normal, ao usar o comando <leader>pv, isso vai ser
	 remapeado para :Ex. no primeiro comando abaixo, dizemos que leader
	 é igual a whitespace. Ou seja, no modo normal, apertar espaço + pv vai
	 dar o trigger no comando :Ex.
--]]
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
