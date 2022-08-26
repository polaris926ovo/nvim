local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

local config = {
	options = {
		mode = "tabs",
		numbers = "ordinal",
		show_tab_indicators = false,
	}
}

-- keymaps
vim.keymap.set("n", "<LEADER>`", ":BufferLinePick<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>1", ":BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>2", ":BufferLineGoToBuffer 2<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>3", ":BufferLineGoToBuffer 3<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>4", ":BufferLineGoToBuffer 4<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>5", ":BufferLineGoToBuffer 5<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>6", ":BufferLineGoToBuffer 6<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>7", ":BufferLineGoToBuffer 7<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>8", ":BufferLineGoToBuffer 8<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>9", ":BufferLineGoToBuffer 9<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>-", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<LEADER>=", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})

vim.keymap.set("n", "<LEADER>q", ":bdelete %<CR>", {noremap = true, silent = true})


bufferline.setup(config)
