-------------------------------------------------
-- font size
-------------------------------------------------

vim.g.gui_font_default_size = 16
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "DejaVu Sans Mono Bold Oblique"

RefreshGuiFont = function()
	vim.o.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
	vim.g.gui_font_size = vim.g.gui_font_size + delta
	RefreshGuiFont()
end

ResetGuiFont = function()
	vim.g.gui_font_size = vim.g.gui_font_default_size
	RefreshGuiFont()
end

ResetGuiFont()

---- keymaps
--vim.keymap.set("n", "<C-0>", function() ResetGuiFont() end, {noremap = true, silent = true})
--vim.keymap.set("n", "<C-->", function() ResizeGuiFont(-1) end, {noremap = true, silent = true})
--vim.keymap.set("n", "<C-=>", function() ResizeGuiFont(1) end, {noremap = true, silent = true})
