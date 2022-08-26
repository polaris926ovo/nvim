local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

local config = {
	ensure_installed = {"c", "cpp", "vim", "lua"},
	sync_install = true,
	ignore_install = {},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = '<CR>',
			node_incremental = '<CR>',
			node_decremental = '<BS>',
			scope_incremental = '<TAB>'
		}
	},

	indent = {
		enable = true
	}
}

vim.wo.foldenable = true
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.wo.foldlevel = 99

treesitter.setup(config)
